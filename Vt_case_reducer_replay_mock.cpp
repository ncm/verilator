// TODO -- will be generated by verilator_replay -- DO NOT PUSH UPSTREAM
#include "Vt_case_reducer.h"
#include "verilated_replay.h"

void VerilatedReplay::createMod() {
    m_modp = new Vt_case_reducer;
    // TODO -- make VerilatedModule destructor virtual so we can delete from the base class?
}

void VerilatedReplay::eval() {
    // TODO -- make eval, trace and final virtual methods of VerilatedModule?
    reinterpret_cast<Vt_case_reducer*>(m_modp)->eval();
}

void VerilatedReplay::trace() {
    // TODO -- need VerilatedFstC, etc.
    //reinterpret_cast<Vt_case_reducer*>(m_modp)->trace();
}

void VerilatedReplay::final() {
    reinterpret_cast<Vt_case_reducer*>(m_modp)->final();
}