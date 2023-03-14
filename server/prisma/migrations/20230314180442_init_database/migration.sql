-- CreateTable
CREATE TABLE `Painters` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `birthDate` VARCHAR(191) NULL,
    `deathDate` VARCHAR(191) NULL,
    `picture` VARCHAR(191) NULL,
    `picture_credit` VARCHAR(191) NULL,
    `wikipedia_link` VARCHAR(191) NULL,

    UNIQUE INDEX `Painters_name_key`(`name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Paintings` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `paintingId` VARCHAR(191) NOT NULL,
    `image` VARCHAR(191) NULL,
    `painterId` INTEGER NOT NULL,

    UNIQUE INDEX `Paintings_paintingId_key`(`paintingId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Paintings` ADD CONSTRAINT `Paintings_painterId_fkey` FOREIGN KEY (`painterId`) REFERENCES `Painters`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
