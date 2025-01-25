.class public final Laidepro/top/base/R$animator;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laidepro/top/base/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "animator"
.end annotation


# static fields
.field public static push_bottom_in:I

.field public static push_bottom_out:I


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x7f0f0000

    sput v0, Laidepro/top/base/R$animator;->push_bottom_in:I

    const v0, 0x7f0f0001

    sput v0, Laidepro/top/base/R$animator;->push_bottom_out:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
