package com.seckillproject.dao;

import com.seckillproject.dataobject.PromoDO;

public interface PromoDOMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table promo
     *
     * @mbg.generated Thu Aug 13 13:15:38 CST 2020
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table promo
     *
     * @mbg.generated Thu Aug 13 13:15:38 CST 2020
     */
    int insert(PromoDO record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table promo
     *
     * @mbg.generated Thu Aug 13 13:15:38 CST 2020
     */
    int insertSelective(PromoDO record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table promo
     *
     * @mbg.generated Thu Aug 13 13:15:38 CST 2020
     */
    PromoDO selectByPrimaryKey(Integer id);
    PromoDO selectByItemId(Integer itemId);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table promo
     *
     * @mbg.generated Thu Aug 13 13:15:38 CST 2020
     */
    int updateByPrimaryKeySelective(PromoDO record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table promo
     *
     * @mbg.generated Thu Aug 13 13:15:38 CST 2020
     */
    int updateByPrimaryKey(PromoDO record);
}