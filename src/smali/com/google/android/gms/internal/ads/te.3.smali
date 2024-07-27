.class public final Lcom/google/android/gms/internal/ads/te;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/xe;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Ge;

.field private final EQ:Z

.field private final FH:J

.field private final Hw:Lcom/google/android/gms/internal/ads/qe;

.field private final J0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final J8:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Mr:Lcom/google/android/gms/internal/ads/Pe;

.field private final QX:Z

.field private final VH:Lcom/google/android/gms/internal/ads/zzwf;

.field private final Ws:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final XL:Z

.field private Zo:Lcom/google/android/gms/internal/ads/zzwb;

.field private aM:Lcom/google/android/gms/internal/ads/Je;

.field private final gn:Landroid/content/Context;

.field private j3:I

.field private final j6:Ljava/lang/String;

.field private final tp:Lcom/google/android/gms/internal/ads/zzbbi;

.field private final u7:Ljava/lang/Object;

.field private final v5:Lcom/google/android/gms/internal/ads/pe;

.field private final we:Lcom/google/android/gms/internal/ads/zzacp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/zzbbi;ZZLcom/google/android/gms/internal/ads/zzacp;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/Ge;",
            "Lcom/google/android/gms/internal/ads/qe;",
            "Lcom/google/android/gms/internal/ads/pe;",
            "Lcom/google/android/gms/internal/ads/zzwb;",
            "Lcom/google/android/gms/internal/ads/zzwf;",
            "Lcom/google/android/gms/internal/ads/zzbbi;",
            "ZZ",
            "Lcom/google/android/gms/internal/ads/zzacp;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/te;->u7:Ljava/lang/Object;

    const/4 v2, -0x2

    iput v2, p0, Lcom/google/android/gms/internal/ads/te;->j3:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/te;->gn:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/te;->DW:Lcom/google/android/gms/internal/ads/Ge;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/te;->v5:Lcom/google/android/gms/internal/ads/pe;

    const-string v2, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/te;->DW()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/te;->j6:Ljava/lang/String;

    :goto_0
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/te;->Hw:Lcom/google/android/gms/internal/ads/qe;

    iget-wide v2, p5, Lcom/google/android/gms/internal/ads/pe;->U2:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/te;->FH:J

    :goto_1
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/te;->Zo:Lcom/google/android/gms/internal/ads/zzwb;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/te;->VH:Lcom/google/android/gms/internal/ads/zzwf;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/te;->tp:Lcom/google/android/gms/internal/ads/zzbbi;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/te;->EQ:Z

    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/te;->QX:Z

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/te;->we:Lcom/google/android/gms/internal/ads/zzacp;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/te;->J0:Ljava/util/List;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/te;->J8:Ljava/util/List;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/te;->Ws:Ljava/util/List;

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/te;->XL:Z

    return-void

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/te;->j6:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-wide v2, p4, Lcom/google/android/gms/internal/ads/qe;->DW:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/te;->FH:J

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x2710

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/te;->FH:J

    goto :goto_1
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/te;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/te;->j3:I

    return v0
.end method

.method private static DW(Ljava/lang/String;)Lcom/google/android/gms/ads/formats/b;
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/ads/formats/b$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/formats/b$a;-><init>()V

    if-nez p0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/b$a;->j6()Lcom/google/android/gms/ads/formats/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "multiple_images"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/formats/b$a;->j6(Z)Lcom/google/android/gms/ads/formats/b$a;

    const-string v3, "only_urls"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/formats/b$a;->DW(Z)Lcom/google/android/gms/ads/formats/b$a;

    const-string v3, "native_image_orientation"

    const-string v4, "any"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "landscape"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x2

    :cond_1
    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/formats/b$a;->DW(I)Lcom/google/android/gms/ads/formats/b$a;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/b$a;->j6()Lcom/google/android/gms/ads/formats/b;

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v3, "portrait"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "any"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Exception occurred when creating native ad options"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private final DW()Ljava/lang/String;
    .registers 4

    const-string v0, "com.google.ads.mediation.customevent.CustomEventAdapter"

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te;->v5:Lcom/google/android/gms/internal/ads/pe;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/pe;->v5:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te;->DW:Lcom/google/android/gms/internal/ads/Ge;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/te;->v5:Lcom/google/android/gms/internal/ads/pe;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/pe;->v5:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/Ge;->er(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Fail to determine the custom event\'s version, assuming the old one."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_1
    const-string v0, "com.google.ads.mediation.customevent.CustomEventAdapter"

    goto :goto_0
.end method

.method private final DW(I)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/te;->EQ:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te;->aM:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Je;->oY()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "capabilities"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te;->VH:Lcom/google/android/gms/internal/ads/zzwf;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzwf;->Hw:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te;->aM:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Je;->getInterstitialAdapterInfo()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te;->aM:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Je;->zzuw()Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Could not get adapter info. Returning false"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/ads/te;)Lcom/google/android/gms/internal/ads/Je;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/te;->Hw()Lcom/google/android/gms/internal/ads/Je;

    move-result-object v0

    return-object v0
.end method

.method private final FH()Lcom/google/android/gms/internal/ads/Pe;
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/te;->j3:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/te;->v5()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x4

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/te;->DW(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->Mr:Lcom/google/android/gms/internal/ads/Pe;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->Mr:Lcom/google/android/gms/internal/ads/Pe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Pe;->Eq()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->Mr:Lcom/google/android/gms/internal/ads/Pe;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Could not get cpm value from MediationResponseMetadata"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/ve;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/te;->Zo()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ve;-><init>(I)V

    goto :goto_0
.end method

.method private final Hw()Lcom/google/android/gms/internal/ads/Je;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->j6:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Instantiating mediation adapter: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/te;->EQ:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->v5:Lcom/google/android/gms/internal/ads/pe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pe;->DW()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-direct {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/te;->j6(Lcom/google/android/gms/ads/mediation/b;)Lcom/google/android/gms/internal/ads/Je;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "Instantiating mediation adapter: "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.google.ads.mediation.AdUrlAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/ads/mediation/AdUrlAdapter;

    invoke-direct {v0}, Lcom/google/ads/mediation/AdUrlAdapter;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/te;->j6(Lcom/google/android/gms/ads/mediation/b;)Lcom/google/android/gms/internal/ads/Je;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "com.google.ads.mediation.admob.AdMobCustomTabsAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ads/df;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzanu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzanu;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/df;-><init>(Lcom/google/android/gms/ads/mediation/b;)V

    goto :goto_1

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->DW:Lcom/google/android/gms/internal/ads/Ge;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te;->j6:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Ge;->rN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Je;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->j6:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Could not instantiate mediation adapter: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/String;

    const-string v2, "Could not instantiate mediation adapter: "

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic Hw(Lcom/google/android/gms/internal/ads/te;)Lcom/google/android/gms/internal/ads/Je;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->aM:Lcom/google/android/gms/internal/ads/Je;

    return-object v0
.end method

.method private final Zo()I
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->v5:Lcom/google/android/gms/internal/ads/pe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pe;->EQ:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/te;->j6:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "cpm_cents"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/te;->DW(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "cpm_floor_cents"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    const-string v0, "penalized_average_cpm_cents"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "Could not convert to json. Returning 0"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic Zo(Lcom/google/android/gms/internal/ads/te;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->j6:Ljava/lang/String;

    return-object v0
.end method

.method private static j6(Lcom/google/android/gms/ads/mediation/b;)Lcom/google/android/gms/internal/ads/Je;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/df;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/df;-><init>(Lcom/google/android/gms/ads/mediation/b;)V

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/te;Lcom/google/android/gms/internal/ads/Je;)Lcom/google/android/gms/internal/ads/Je;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/te;->aM:Lcom/google/android/gms/internal/ads/Je;

    return-object p1
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/te;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->u7:Ljava/lang/Object;

    return-object v0
.end method

.method private final j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/te;->v5()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/te;->DW(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "cpm_floor_cents"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Could not remove field. Returning the original value"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/se;)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->v5:Lcom/google/android/gms/internal/ads/pe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pe;->EQ:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/te;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->tp:Lcom/google/android/gms/internal/ads/zzbbi;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbbi;->FH:I

    const v1, 0x3e8fa0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->VH:Lcom/google/android/gms/internal/ads/zzwf;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzwf;->Hw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->aM:Lcom/google/android/gms/internal/ads/Je;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te;->gn:Landroid/content/Context;

    invoke-static {v1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/te;->Zo:Lcom/google/android/gms/internal/ads/zzwb;

    invoke-interface {v0, v1, v2, v4, p1}, Lcom/google/android/gms/internal/ads/Je;->j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Me;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->aM:Lcom/google/android/gms/internal/ads/Je;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te;->gn:Landroid/content/Context;

    invoke-static {v1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/te;->VH:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/te;->Zo:Lcom/google/android/gms/internal/ads/zzwb;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Je;->j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Me;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not request ad from mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/te;->j6(I)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/te;->EQ:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->v5:Lcom/google/android/gms/internal/ads/pe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pe;->DW()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->J0:Ljava/util/List;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->J8:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->J8:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, ":false"

    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/te;->Ws:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/te;->Ws:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, ":true"

    :cond_3
    :try_start_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x7

    add-int/2addr v3, v5

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "custom:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->VH:Lcom/google/android/gms/internal/ads/zzwf;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzwf;->Hw:Z

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te;->aM:Lcom/google/android/gms/internal/ads/Je;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->gn:Landroid/content/Context;

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/te;->Zo:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->v5:Lcom/google/android/gms/internal/ads/pe;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/pe;->j6:Ljava/lang/String;

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Je;->j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Me;)V

    goto/16 :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/te;->QX:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->v5:Lcom/google/android/gms/internal/ads/pe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pe;->Ws:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te;->aM:Lcom/google/android/gms/internal/ads/Je;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->gn:Landroid/content/Context;

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/te;->Zo:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->v5:Lcom/google/android/gms/internal/ads/pe;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/pe;->j6:Ljava/lang/String;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzacp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->v5:Lcom/google/android/gms/internal/ads/pe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pe;->j3:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/te;->DW(Ljava/lang/String;)Lcom/google/android/gms/ads/formats/b;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ads/zzacp;-><init>(Lcom/google/android/gms/ads/formats/b;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->v5:Lcom/google/android/gms/internal/ads/pe;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/pe;->aM:Ljava/util/List;

    move-object v6, p1

    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/Je;->j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Me;Lcom/google/android/gms/internal/ads/zzacp;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->aM:Lcom/google/android/gms/internal/ads/Je;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te;->gn:Landroid/content/Context;

    invoke-static {v1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/te;->VH:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/te;->Zo:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/te;->v5:Lcom/google/android/gms/internal/ads/pe;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/pe;->j6:Ljava/lang/String;

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/Je;->j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Me;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->aM:Lcom/google/android/gms/internal/ads/Je;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te;->gn:Landroid/content/Context;

    invoke-static {v1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/te;->VH:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/te;->Zo:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/te;->v5:Lcom/google/android/gms/internal/ads/pe;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/pe;->j6:Ljava/lang/String;

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/Je;->j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Me;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te;->aM:Lcom/google/android/gms/internal/ads/Je;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->gn:Landroid/content/Context;

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/te;->Zo:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->v5:Lcom/google/android/gms/internal/ads/pe;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/pe;->j6:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/te;->we:Lcom/google/android/gms/internal/ads/zzacp;

    move-object v6, p1

    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/Je;->j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Me;Lcom/google/android/gms/internal/ads/zzacp;Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/te;Lcom/google/android/gms/internal/ads/se;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/te;->j6(Lcom/google/android/gms/internal/ads/se;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/te;I)Z
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/te;->DW(I)Z

    move-result v0

    return v0
.end method

.method private final v5()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->Hw:Lcom/google/android/gms/internal/ads/qe;

    iget v0, v0, Lcom/google/android/gms/internal/ads/qe;->J0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic v5(Lcom/google/android/gms/internal/ads/te;)Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/te;->v5()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final j6(JJ)Lcom/google/android/gms/internal/ads/we;
    .registers 20

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/te;->u7:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v5, Lcom/google/android/gms/internal/ads/se;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/se;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/ue;

    invoke-direct {v1, p0, v5}, Lcom/google/android/gms/internal/ads/ue;-><init>(Lcom/google/android/gms/internal/ads/te;Lcom/google/android/gms/internal/ads/se;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/te;->FH:J

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/te;->j3:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v12

    new-instance v1, Lcom/google/android/gms/internal/ads/we;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/te;->v5:Lcom/google/android/gms/internal/ads/pe;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/te;->aM:Lcom/google/android/gms/internal/ads/Je;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/te;->j6:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/gms/internal/ads/te;->j3:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/te;->FH()Lcom/google/android/gms/internal/ads/Pe;

    move-result-object v7

    sub-long v8, v12, v8

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/we;-><init>(Lcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/Je;Ljava/lang/String;Lcom/google/android/gms/internal/ads/se;ILcom/google/android/gms/internal/ads/Pe;J)V

    monitor-exit v10

    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v6, v2, v8

    sub-long v6, v0, v6

    sub-long v2, v2, p1

    sub-long v2, p3, v2

    const-wide/16 v12, 0x0

    cmp-long v4, v6, v12

    if-lez v4, :cond_1

    const-wide/16 v12, 0x0

    cmp-long v4, v2, v12

    if-gtz v4, :cond_2

    :cond_1
    const-string v2, "Timed out waiting for adapter."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/gms/internal/ads/te;->j3:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/te;->u7:Ljava/lang/Object;

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v2, 0x5

    :try_start_2
    iput v2, p0, Lcom/google/android/gms/internal/ads/te;->j3:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final j6()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te;->u7:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->aM:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->aM:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Je;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/te;->j3:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->u7:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Could not destroy mediation adapter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final j6(I)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te;->u7:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/te;->j3:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->u7:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(ILcom/google/android/gms/internal/ads/Pe;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te;->u7:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/te;->j3:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/te;->Mr:Lcom/google/android/gms/internal/ads/Pe;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->u7:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
