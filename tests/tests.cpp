#include "gtest/gtest.h"

TEST(TestCheck, check0) {
ASSERT_TRUE(true);
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);

    auto res = RUN_ALL_TESTS();
    getchar();
    return res;
}