.class public final Lorg/jetbrains/annotations/Async;
.super Ljava/lang/Object;
.source "Async.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jetbrains/annotations/Async$Execute;,
        Lorg/jetbrains/annotations/Async$Schedule;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/AssertionError;

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/gms/common/images/fgBV/xVnYvYZdvU;->WtHY:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
