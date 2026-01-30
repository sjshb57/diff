.class public final Lcom/onevcat/uniwebview/e2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "La/v;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:I

.field public final synthetic c:F

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZIFLjava/lang/String;)V
    .registers 5

    iput-boolean p1, p0, Lcom/onevcat/uniwebview/e2;->a:Z

    iput p2, p0, Lcom/onevcat/uniwebview/e2;->b:I

    iput p3, p0, Lcom/onevcat/uniwebview/e2;->c:F

    iput-object p4, p0, Lcom/onevcat/uniwebview/e2;->d:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    move-object v0, p1

    check-cast v0, La/v;

    const-string p1, "it"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/onevcat/uniwebview/e2;->a:Z

    iget v3, p0, Lcom/onevcat/uniwebview/e2;->b:I

    iget v4, p0, Lcom/onevcat/uniwebview/e2;->c:F

    iget-object v5, p0, Lcom/onevcat/uniwebview/e2;->d:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, La/v;->a(ZZIFLjava/lang/String;)Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
