.class public final Lcom/google/firebase/tracing/FirebaseTrace;
.super Ljava/lang/Object;
.source "FirebaseTrace.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static popTrace()V
    .registers 0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public static pushTrace(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method
