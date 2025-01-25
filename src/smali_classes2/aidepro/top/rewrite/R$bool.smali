.class public final Laidepro/top/rewrite/R$bool;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laidepro/top/rewrite/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "bool"
.end annotation


# static fields
.field public static abc_action_bar_embed_tabs:I


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x7f040000

    sput v0, Laidepro/top/rewrite/R$bool;->abc_action_bar_embed_tabs:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
