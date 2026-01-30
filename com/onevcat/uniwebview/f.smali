.class public final Lcom/onevcat/uniwebview/f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/onevcat/uniwebview/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/onevcat/uniwebview/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/onevcat/uniwebview/f;->c:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 7

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v0, La/q;

    const-string v2, "activity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onevcat/uniwebview/f;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/onevcat/uniwebview/f;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/onevcat/uniwebview/f;->c:Ljava/lang/String;

    new-instance v5, La/f;

    invoke-direct {v5}, La/f;-><init>()V

    invoke-direct/range {v0 .. v5}, La/q;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/i0;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
