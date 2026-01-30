.class public final Lcom/onevcat/uniwebview/i1;
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
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    iput p1, p0, Lcom/onevcat/uniwebview/i1;->a:I

    iput p2, p0, Lcom/onevcat/uniwebview/i1;->b:I

    iput p3, p0, Lcom/onevcat/uniwebview/i1;->c:I

    iput p4, p0, Lcom/onevcat/uniwebview/i1;->d:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    check-cast p1, La/v;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/onevcat/uniwebview/i1;->a:I

    iget v1, p0, Lcom/onevcat/uniwebview/i1;->b:I

    iget v2, p0, Lcom/onevcat/uniwebview/i1;->c:I

    iget v3, p0, Lcom/onevcat/uniwebview/i1;->d:I

    invoke-virtual {p1, v0, v1, v2, v3}, La/v;->a(IIII)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
