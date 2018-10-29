<?php

namespace Model;

/**
 * Class dishCategory
 * @package Model
 */
class GrowerCategory
{
    /**
     * @var int
     */
    private $id;

    /**
     * @var string
     */
    private $nameCategory;

    /**
     * @return int
     */
    public function getId(): int
    {
        return $this->id;
    }

    /**
     * @param int $id
     */
    public function setId(int $id)
    {
        $this->id = $id;
    }

    /**
     * @return string
     */
    public function getNameCategory(): string
    {
        return $this->nameCategory;
    }

    /**
     * @param string $nameCategory
     */
    public function setNameCategory(string $nameCategory)
    {
        $this->nameCategory = $nameCategory;
    }

}
