.class public final Laidepro/top/base/R$raw;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laidepro/top/base/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "raw"
.end annotation


# static fields
.field public static bell:I

.field public static click:I

.field public static fail:I

.field public static ouya_key:I

.field public static success_lesson:I

.field public static success_task:I

.field public static task:I


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const v0, 0x7f0c0006

    sput v0, Laidepro/top/base/R$raw;->bell:I

    const/high16 v0, 0x7f0c0000

    sput v0, Laidepro/top/base/R$raw;->click:I

    const v0, 0x7f0c0001

    sput v0, Laidepro/top/base/R$raw;->fail:I

    const v0, 0x7f0c0002

    sput v0, Laidepro/top/base/R$raw;->ouya_key:I

    const v0, 0x7f0c0003

    sput v0, Laidepro/top/base/R$raw;->success_lesson:I

    const v0, 0x7f0c0004

    sput v0, Laidepro/top/base/R$raw;->success_task:I

    const v0, 0x7f0c0005

    sput v0, Laidepro/top/base/R$raw;->task:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
