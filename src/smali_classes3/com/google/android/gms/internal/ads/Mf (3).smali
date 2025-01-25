.class public final Lcom/google/android/gms/internal/ads/Mf;
.super Lcom/google/android/gms/internal/ads/_f;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final FH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Mo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "createCalendarEvent"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/_f;-><init>(Lcom/google/android/gms/internal/ads/Mo;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Mf;->FH:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->nw()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Mf;->Hw:Landroid/content/Context;

    const-string p1, "description"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Mf;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Mf;->v5:Ljava/lang/String;

    const-string p1, "summary"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Mf;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Mf;->gn:Ljava/lang/String;

    const-string p1, "start_ticks"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Mf;->v5(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/Mf;->Zo:J

    const-string p1, "end_ticks"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Mf;->v5(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/Mf;->VH:J

    const-string p1, "location"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Mf;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Mf;->u7:Ljava/lang/String;

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

    if-eqz v0, :cond_11

    const-string p1, ""

    return-object p1

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mf;->FH:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Mf;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Mf;->Hw:Landroid/content/Context;

    return-object p0
.end method

.method private final v5(Ljava/lang/String;)J
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mf;->FH:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-wide/16 v0, -0x1

    if-nez p1, :cond_d

    return-wide v0

    :cond_d
    :try_start_d
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-exception p1

    :goto_13
    return-wide v0
.end method


# virtual methods
.method public final DW()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mf;->Hw:Landroid/content/Context;

    if-nez v0, :cond_a

    const-string v0, "Activity context is not available."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mf;->Hw:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nk;->Zo(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzy;->Hw()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "This feature is not available on the device."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    return-void

    :cond_1f
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mf;->Hw:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nk;->v5(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pk;->DW()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_39

    sget v2, Labcd/ex;->s5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3b

    :cond_39
    const-string v2, "Create calendar event"

    :goto_3b
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_47

    sget v2, Labcd/ex;->s6:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_49

    :cond_47
    const-string v2, "Allow Ad to create a calendar event?"

    :goto_49
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_55

    sget v2, Labcd/ex;->s3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_57

    :cond_55
    const-string v2, "Accept"

    :goto_57
    new-instance v3, Lcom/google/android/gms/internal/ads/Nf;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/Nf;-><init>(Lcom/google/android/gms/internal/ads/Mf;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_68

    sget v2, Labcd/ex;->s4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6a

    :cond_68
    const-string v1, "Decline"

    :goto_6a
    new-instance v2, Lcom/google/android/gms/internal/ads/Of;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/Of;-><init>(Lcom/google/android/gms/internal/ads/Mf;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method final j6()Landroid/content/Intent;
    .registers 7

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

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/Mf;->Zo:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_2f

    const-string v5, "beginTime"

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_2f
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/Mf;->VH:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_3a

    const-string v3, "endTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_3a
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method
