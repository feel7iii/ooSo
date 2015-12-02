package com.atom.ooSo.configure.redis;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.StringRedisTemplate;

import redis.clients.jedis.JedisPoolConfig;

@Configuration
public class RedisConfiguration {

	@Bean
	public StringRedisTemplate stringRedisTemplate() {
		return new StringRedisTemplate(jedisConnectionFactory());
	}

	@Bean
	public RedisConnectionFactory jedisConnectionFactory() {

		JedisPoolConfig poolConfig = new JedisPoolConfig();
		poolConfig.setMaxIdle(5);
		poolConfig.setMinIdle(1);
		poolConfig.setTestOnBorrow(true);
		poolConfig.setTestOnReturn(true);
		poolConfig.setTestWhileIdle(true);
		poolConfig.setNumTestsPerEvictionRun(10);
		poolConfig.setTimeBetweenEvictionRunsMillis(60000);

		JedisConnectionFactory jedisConnectionFactory = new JedisConnectionFactory(poolConfig);
		jedisConnectionFactory.setUsePool(true);
		jedisConnectionFactory.setHostName("localhost");
		jedisConnectionFactory.setPort(9999);
		jedisConnectionFactory.setPassword("wu");

		return jedisConnectionFactory;
	}

}
