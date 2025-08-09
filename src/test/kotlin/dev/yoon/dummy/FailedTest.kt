package dev.yoon.dummy

import org.junit.jupiter.api.Disabled
import kotlin.test.Test
import kotlin.test.fail

class FailedTest {
    @Test
    @Disabled
    fun alwaysFails() {
        fail("이 테스트는 무조건 실패합니다!!")
    }
}
