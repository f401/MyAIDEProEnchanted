.class public Landroidj/support/v4/app/NotificationCompat$BigTextStyle;
.super Landroidj/support/v4/app/NotificationCompat$Style;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# instance fields
.field mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/app/NotificationCompat$Style;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidj/support/v4/app/NotificationCompat$Builder;)V
    .registers 2

    invoke-direct {p0}, Landroidj/support/v4/app/NotificationCompat$Style;-><init>()V

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/NotificationCompat$BigTextStyle;->setBuilder(Landroidj/support/v4/app/NotificationCompat$Builder;)V

    return-void
.end method


# virtual methods
.method public bigText(Ljava/lang/CharSequence;)Landroidj/support/v4/app/NotificationCompat$BigTextStyle;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroidj/support/v4/app/NotificationCompat$BigTextStyle;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/NotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroidj/support/v4/app/NotificationCompat$BigTextStyle;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/NotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    return-object p0
.end method
