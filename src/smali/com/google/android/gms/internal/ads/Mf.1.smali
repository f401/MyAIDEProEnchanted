.class public final Lcom/google/android/gms/internal/ads/Mf;
.super Lcom/google/android/gms/internal/ads/_f;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final FH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Landroid/content/Context;

.field private VH:J

.field private Zo:J

.field private gn:Ljava/lang/String;

.field private u7:Ljava/lang/String;

.field private v5:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Mo;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Mo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "createCalendarEvent"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/_f;-><init>(Lcom/google/android/gms/internal/ads/Mo;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Mf;->FH:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->nw()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Mf;->Hw:Landroid/content/Context;

    const-string v0, "description"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Mf;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Mf;->v5:Ljava/lang/String;

    const-string v0, "summary"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Mf;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Mf;->gn:Ljava/lang/String;

    const-string v0, "start_ticks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Mf;->v5(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Mf;->Zo:J

    const-string v0, "end_ticks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Mf;->v5(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Mf;->VH:J

    const-string v0, "location"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Mf;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Mf;->u7:Ljava/lang/String;

    return-void
.end method

.method private final Hw(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mf;->FH:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mf;->FH:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Mf;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mf;->Hw:Landroid/content/Context;

    return-object v0
.end method

.method private final v5(Ljava/lang/String;)J
    .registers 6

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mf;->FH:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-wide v2

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_1
    move-wide v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final DW()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mf;->Hw:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "Activity context is not available."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mf;->Hw:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nk;->Zo(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzy;->Hw()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "This feature is not available on the device."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mf;->Hw:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nk;->v5(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->DW()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_2

    sget v0, Labcd/ex;->s5:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_3

    sget v0, Labcd/ex;->s6:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_4

    sget v0, Labcd/ex;->s3:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v3, Lcom/google/android/gms/internal/ads/Nf;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/Nf;-><init>(Lcom/google/android/gms/internal/ads/Mf;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_5

    sget v0, Labcd/ex;->s4:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-instance v2, Lcom/google/android/gms/internal/ads/Of;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/Of;-><init>(Lcom/google/android/gms/internal/ads/Mf;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    const-string v0, "Create calendar event"

    goto :goto_1

    :cond_3
    const-string v0, "Allow Ad to create a calendar event?"

    goto :goto_2

    :cond_4
    const-string v0, "Accept"

    goto :goto_3

    :cond_5
    const-string v0, "Decline"

    goto :goto_4
.end method

.method final j6()Landroid/content/Intent;
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const-wide/16 v4, -0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Mf;->v5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "eventLocation"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Mf;->u7:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "description"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Mf;->gn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Mf;->Zo:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const-string v1, "beginTime"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Mf;->VH:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const-string v1, "endTime"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method
