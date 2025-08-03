package dev.yoon.dummy

import kotlin.test.Test
import kotlin.test.fail

class FailedTest {
    @Test
    fun alwaysFails() {
        fail("이 테스트는 무조건 실패합니다.")
    }
}
