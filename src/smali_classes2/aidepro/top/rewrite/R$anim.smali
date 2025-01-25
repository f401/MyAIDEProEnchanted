.class public final Laidepro/top/rewrite/R$anim;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laidepro/top/rewrite/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "anim"
.end annotation


# static fields
.field public static drag_activity_enter_anim:I

.field public static drag_activity_exit_anim:I

.field public static fade_in:I

.field public static translation_enter:I

.field public static translation_exits:I


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const v0, 0x7f010003

    sput v0, Laidepro/top/rewrite/R$anim;->drag_activity_enter_anim:I

    const v0, 0x7f010004

    sput v0, Laidepro/top/rewrite/R$anim;->drag_activity_exit_anim:I

    const/high16 v0, 0x7f010000

    sput v0, Laidepro/top/rewrite/R$anim;->fade_in:I

    const v0, 0x7f010001

    sput v0, Laidepro/top/rewrite/R$anim;->translation_enter:I

    const v0, 0x7f010002

    sput v0, Laidepro/top/rewrite/R$anim;->translation_exits:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
