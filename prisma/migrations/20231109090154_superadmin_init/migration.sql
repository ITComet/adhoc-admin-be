/*
  Warnings:

  - Added the required column `userRoleId` to the `users` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "users" ADD COLUMN     "userRoleId" INTEGER NOT NULL;

-- CreateTable
CREATE TABLE "user_roles" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "user_roles_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CUser" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "user" TEXT NOT NULL,
    "role" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "firstName" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "phoneInt" INTEGER NOT NULL,
    "detail1" TEXT NOT NULL,
    "detail2" TEXT NOT NULL,
    "status" BOOLEAN NOT NULL,
    "is_exist" BOOLEAN NOT NULL,

    CONSTRAINT "CUser_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "partners" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "partnerName" TEXT NOT NULL,
    "posKey" TEXT NOT NULL,
    "posSecret" TEXT NOT NULL,
    "companyName" TEXT NOT NULL,
    "companyAbb" TEXT NOT NULL,
    "cui" TEXT NOT NULL,
    "noRegistration" INTEGER NOT NULL,
    "address" TEXT NOT NULL,
    "phoneInt" INTEGER NOT NULL,
    "category" TEXT NOT NULL,
    "currency" TEXT NOT NULL,
    "accountUser" TEXT NOT NULL,
    "firstName" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "payPlan" TEXT NOT NULL,

    CONSTRAINT "partners_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "locations" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "locationName" TEXT NOT NULL,
    "fullAddress" TEXT NOT NULL,
    "phoneNumber" TEXT NOT NULL,
    "posSystem" TEXT NOT NULL,
    "locationId" INTEGER NOT NULL,
    "autoAcceptOrder" BOOLEAN NOT NULL,
    "onlinePayment" BOOLEAN NOT NULL,
    "monSTime" TIMESTAMP(3) NOT NULL,
    "monETime" TIMESTAMP(3) NOT NULL,
    "tueSTime" TIMESTAMP(3) NOT NULL,
    "tueETime" TIMESTAMP(3) NOT NULL,
    "wedSTime" TIMESTAMP(3) NOT NULL,
    "wedETime" TIMESTAMP(3) NOT NULL,
    "thuSTime" TIMESTAMP(3) NOT NULL,
    "thuETime" TIMESTAMP(3) NOT NULL,
    "friSTime" TIMESTAMP(3) NOT NULL,
    "friETime" TIMESTAMP(3) NOT NULL,
    "satSTime" TIMESTAMP(3) NOT NULL,
    "satETime" TIMESTAMP(3) NOT NULL,
    "sunSTime" TIMESTAMP(3) NOT NULL,
    "sunETime" TIMESTAMP(3) NOT NULL,
    "partnerId" INTEGER NOT NULL,

    CONSTRAINT "locations_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "CUser_user_key" ON "CUser"("user");

-- CreateIndex
CREATE UNIQUE INDEX "CUser_email_key" ON "CUser"("email");

-- CreateIndex
CREATE UNIQUE INDEX "locations_locationId_key" ON "locations"("locationId");

-- AddForeignKey
ALTER TABLE "users" ADD CONSTRAINT "users_userRoleId_fkey" FOREIGN KEY ("userRoleId") REFERENCES "user_roles"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "locations" ADD CONSTRAINT "locations_partnerId_fkey" FOREIGN KEY ("partnerId") REFERENCES "partners"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
