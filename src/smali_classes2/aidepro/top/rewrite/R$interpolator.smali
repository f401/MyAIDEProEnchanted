.class public final Laidepro/top/rewrite/R$interpolator;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laidepro/top/rewrite/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "interpolator"
.end annotation


# static fields
.field public static accelerate_quart:I

.field public static decelerate_quart:I


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x7f120000

    sput v0, Laidepro/top/rewrite/R$interpolator;->accelerate_quart:I

    const v0, 0x7f120001

    sput v0, Laidepro/top/rewrite/R$interpolator;->decelerate_quart:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
