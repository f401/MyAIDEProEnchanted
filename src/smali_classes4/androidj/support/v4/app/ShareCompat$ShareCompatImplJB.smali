.class Landroidj/support/v4/app/ShareCompat$ShareCompatImplJB;
.super Landroidj/support/v4/app/ShareCompat$ShareCompatImplICS;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShareCompatImplJB"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/app/ShareCompat$ShareCompatImplICS;-><init>()V

    return-void
.end method


# virtual methods
.method public escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/app/ShareCompatJB;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method shouldAddChooserIntent(Landroid/view/MenuItem;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
