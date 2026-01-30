.class final Lkotlin/time/AdjustedTimeMark;
.super Ljava/lang/Object;
.source "TimeSource.kt"

# interfaces
.implements Lkotlin/time/TimeMark;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\b\u0003\u0018\u00002\u00020\u0001B\u0018\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000¢\u0006\u0002\u0010\u0005J\u0015\u0010\u000b\u001a\u00020\u0004H\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\f\u0010\u0007J\u001b\u0010\r\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u0004H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0011"
    }
    d2 = {
        "Lkotlin/time/AdjustedTimeMark;",
        "Lkotlin/time/TimeMark;",
        "mark",
        "adjustment",
        "Lkotlin/time/Duration;",
        "(Lkotlin/time/TimeMark;JLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getAdjustment-UwyO8pc",
        "()J",
        "J",
        "getMark",
        "()Lkotlin/time/TimeMark;",
        "elapsedNow",
        "elapsedNow-UwyO8pc",
        "plus",
        "duration",
        "plus-LRDsOJo",
        "(J)Lkotlin/time/TimeMark;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final adjustment:J

.field private final mark:Lkotlin/time/TimeMark;


# direct methods
.method private constructor <init>(Lkotlin/time/TimeMark;J)V
    .registers 5

    const-string v0, "mark"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/time/AdjustedTimeMark;->mark:Lkotlin/time/TimeMark;

    iput-wide p2, p0, Lkotlin/time/AdjustedTimeMark;->adjustment:J

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/time/TimeMark;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lkotlin/time/AdjustedTimeMark;-><init>(Lkotlin/time/TimeMark;J)V

    return-void
.end method


# virtual methods
.method public elapsedNow-UwyO8pc()J
    .registers 5

    iget-object v0, p0, Lkotlin/time/AdjustedTimeMark;->mark:Lkotlin/time/TimeMark;

    invoke-interface {v0}, Lkotlin/time/TimeMark;->elapsedNow-UwyO8pc()J

    move-result-wide v0

    iget-wide v2, p0, Lkotlin/time/AdjustedTimeMark;->adjustment:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAdjustment-UwyO8pc()J
    .registers 3

    iget-wide v0, p0, Lkotlin/time/AdjustedTimeMark;->adjustment:J

    return-wide v0
.end method

.method public final getMark()Lkotlin/time/TimeMark;
    .registers 2

    iget-object v0, p0, Lkotlin/time/AdjustedTimeMark;->mark:Lkotlin/time/TimeMark;

    return-object v0
.end method

.method public hasNotPassedNow()Z
    .registers 2

    invoke-static {p0}, Lkotlin/time/TimeMark$DefaultImpls;->hasNotPassedNow(Lkotlin/time/TimeMark;)Z

    move-result v0

    return v0
.end method

.method public hasPassedNow()Z
    .registers 2

    invoke-static {p0}, Lkotlin/time/TimeMark$DefaultImpls;->hasPassedNow(Lkotlin/time/TimeMark;)Z

    move-result v0

    return v0
.end method

.method public minus-LRDsOJo(J)Lkotlin/time/TimeMark;
    .registers 3

    invoke-static {p0, p1, p2}, Lkotlin/time/TimeMark$DefaultImpls;->minus-LRDsOJo(Lkotlin/time/TimeMark;J)Lkotlin/time/TimeMark;

    move-result-object p1

    return-object p1
.end method

.method public plus-LRDsOJo(J)Lkotlin/time/TimeMark;
    .registers 7

    new-instance v0, Lkotlin/time/AdjustedTimeMark;

    iget-object v1, p0, Lkotlin/time/AdjustedTimeMark;->mark:Lkotlin/time/TimeMark;

    iget-wide v2, p0, Lkotlin/time/AdjustedTimeMark;->adjustment:J

    invoke-static {v2, v3, p1, p2}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lkotlin/time/AdjustedTimeMark;-><init>(Lkotlin/time/TimeMark;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lkotlin/time/TimeMark;

    return-object v0
.end method
