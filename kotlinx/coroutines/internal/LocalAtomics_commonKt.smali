.class public final Lkotlinx/coroutines/internal/LocalAtomics_commonKt;
.super Ljava/lang/Object;
.source "LocalAtomics.common.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\".\u0010\u0000\u001a\u00020\u0001*\u00060\u0002j\u0002`\u00032\u0006\u0010\u0000\u001a\u00020\u00018À\u0002@À\u0002X\u0080\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007¨\u0006\b"
    }
    d2 = {
        "value",
        "",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lkotlinx/coroutines/internal/LocalAtomicInt;",
        "getValue",
        "(Ljava/util/concurrent/atomic/AtomicInteger;)I",
        "setValue",
        "(Ljava/util/concurrent/atomic/AtomicInteger;I)V",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getValue(Ljava/util/concurrent/atomic/AtomicInteger;)I
    .registers 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public static final setValue(Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .registers 2

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
