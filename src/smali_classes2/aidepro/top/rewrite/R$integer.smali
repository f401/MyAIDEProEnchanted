.class public final Laidepro/top/rewrite/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laidepro/top/rewrite/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static cancel_button_image_alpha:I

.field public static google_play_services_version:I

.field public static status_bar_notification_info_maxnum:I


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x7f090000

    sput v0, Laidepro/top/rewrite/R$integer;->cancel_button_image_alpha:I

    const v0, 0x7f090001

    sput v0, Laidepro/top/rewrite/R$integer;->google_play_services_version:I

    const v0, 0x7f090002

    sput v0, Laidepro/top/rewrite/R$integer;->status_bar_notification_info_maxnum:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
