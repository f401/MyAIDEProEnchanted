.class public abstract Lcom/google/android/gms/ads/internal/aa;
.super Lcom/google/android/gms/ads/internal/a;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/m;
.implements Lcom/google/android/gms/ads/internal/P;
.implements Lcom/google/android/gms/internal/ads/re;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field protected final J0:Lcom/google/android/gms/internal/ads/Ge;

.field private transient J8:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V
    .registers 8

    new-instance v0, Lcom/google/android/gms/ads/internal/Y;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/ads/internal/Y;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p4, p1, p6}, Lcom/google/android/gms/ads/internal/aa;-><init>(Lcom/google/android/gms/ads/internal/Y;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/ads/internal/M;Lcom/google/android/gms/ads/internal/ta;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/internal/Y;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/ads/internal/M;Lcom/google/android/gms/ads/internal/ta;)V
    .registers 5

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gms/ads/internal/a;-><init>(Lcom/google/android/gms/ads/internal/Y;Lcom/google/android/gms/ads/internal/M;Lcom/google/android/gms/ads/internal/ta;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/aa;->J0:Lcom/google/android/gms/internal/ads/Ge;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/aa;->J8:Z

    return-void
.end method

.method static FH(Lcom/google/android/gms/internal/ads/kk;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kk;->aM:Ljava/lang/String;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    :goto_1a
    if-eqz v1, :cond_31

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz p0, :cond_31

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/pe;->EQ:Ljava/lang/String;

    :try_start_22
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "class_name"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_2d} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_2d} :catch_2e

    return-object p0

    :catch_2e
    move-exception p0

    goto :goto_31

    :catch_30
    move-exception p0

    :cond_31
    :goto_31
    return-object v0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/zzwb;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/ok;I)Lcom/google/android/gms/internal/ads/Yh;
    .registers 63

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_c
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v4, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->DW(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_1a} :catch_1c

    move-object v8, v0

    goto :goto_1e

    :catch_1c
    move-exception v0

    move-object v8, v3

    :goto_1e
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    if-eqz v0, :cond_92

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_92

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v5, v0}, Landroid/widget/ViewSwitcher;->getLocationOnScreen([I)V

    aget v5, v0, v2

    const/4 v6, 0x1

    aget v0, v0, v6

    iget-object v9, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v9, v9, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v9}, Landroid/widget/ViewSwitcher;->getWidth()I

    move-result v9

    iget-object v10, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v10, v10, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v10}, Landroid/widget/ViewSwitcher;->getHeight()I

    move-result v10

    iget-object v11, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v11, v11, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v11}, Landroid/widget/ViewSwitcher;->isShown()Z

    move-result v11

    if-eqz v11, :cond_70

    add-int v11, v5, v9

    if-lez v11, :cond_70

    add-int v11, v0, v10

    if-lez v11, :cond_70

    iget v11, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v5, v11, :cond_70

    iget v11, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v0, v11, :cond_70

    goto :goto_71

    :cond_70
    const/4 v6, 0x0

    :goto_71
    new-instance v11, Landroid/os/Bundle;

    const/4 v12, 0x5

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(I)V

    const-string v12, "x"

    invoke-virtual {v11, v12, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "y"

    invoke-virtual {v11, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "width"

    invoke-virtual {v11, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "height"

    invoke-virtual {v11, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "visible"

    invoke-virtual {v11, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v12, v11

    goto :goto_93

    :cond_92
    move-object v12, v3

    :goto_93
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/pk;->J8()Lcom/google/android/gms/internal/ads/yk;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v6

    iget-object v9, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v9, v9, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    invoke-virtual {v5, v6, v9}, Lcom/google/android/gms/internal/ads/yk;->j6(Lcom/google/android/gms/common/util/e;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/mk;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/ads/internal/Y;->we:Lcom/google/android/gms/internal/ads/mk;

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->we:Lcom/google/android/gms/internal/ads/mk;

    move-object/from16 v14, p1

    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/mk;->j6(Lcom/google/android/gms/internal/ads/zzwb;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    invoke-static {v5, v6, v0}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzwf;)Ljava/lang/String;

    move-result-object v20

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->XL:Lcom/google/android/gms/internal/ads/WH;

    if-eqz v0, :cond_d4

    :try_start_c9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/WH;->getValue()J

    move-result-wide v5
    :try_end_cd
    .catch Landroid/os/RemoteException; {:try_start_c9 .. :try_end_cd} :catch_ce

    goto :goto_d6

    :catch_ce
    move-exception v0

    const-string v0, "Cannot get correlation id, default to 0."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_d4
    const-wide/16 v5, 0x0

    :goto_d6
    move-wide/from16 v21, v5

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->J8()Lcom/google/android/gms/internal/ads/yk;

    move-result-object v0

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/ads/yk;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/vk;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_fb
    iget-object v6, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    invoke-virtual {v6}, Labcd/x;->size()I

    move-result v6

    if-ge v5, v6, :cond_12c

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    invoke-virtual {v6, v5}, Labcd/x;->DW(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v9, v9, Lcom/google/android/gms/ads/internal/Y;->a8:Labcd/x;

    invoke-virtual {v9, v6}, Labcd/x;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_129

    iget-object v9, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v9, v9, Lcom/google/android/gms/ads/internal/Y;->a8:Labcd/x;

    invoke-virtual {v9, v6}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_129

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_129
    add-int/lit8 v5, v5, 0x1

    goto :goto_fb

    :cond_12c
    new-instance v5, Lcom/google/android/gms/ads/internal/da;

    invoke-direct {v5, v1}, Lcom/google/android/gms/ads/internal/da;-><init>(Lcom/google/android/gms/ads/internal/aa;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v34

    new-instance v5, Lcom/google/android/gms/ads/internal/ea;

    invoke-direct {v5, v1}, Lcom/google/android/gms/ads/internal/ea;-><init>(Lcom/google/android/gms/ads/internal/aa;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v44

    if-eqz p3, :cond_147

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/ok;->FH()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v35, v5

    goto :goto_149

    :cond_147
    move-object/from16 v35, v3

    :goto_149
    iget-object v5, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/Y;->ro:Ljava/util/List;

    if-eqz v5, :cond_19d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_19d

    if-eqz v8, :cond_159

    iget v2, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    :cond_159
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Hk;->gn()I

    move-result v5

    if-le v2, v5, :cond_17e

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Hk;->j6()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/google/android/gms/internal/ads/Hk;->DW(I)V

    goto :goto_19d

    :cond_17e
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Hk;->EQ()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_19d

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_19d

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v46, v2

    goto :goto_19f

    :cond_19d
    :goto_19d
    move-object/from16 v46, v3

    :goto_19f
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v6, v2, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->we:Lcom/google/android/gms/internal/ads/mk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/mk;->v5()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->Zo()Ljava/lang/String;

    move-result-object v10

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v11, v2, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->ro:Ljava/util/List;

    move-object/from16 v47, v13

    move-object v13, v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Hk;->Zo()Z

    move-result v16

    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v2

    iget v2, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v2

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/p;->j6()Ljava/util/List;

    move-result-object v24

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v2, Lcom/google/android/gms/ads/internal/Y;->j6:Ljava/lang/String;

    move-object/from16 v25, v4

    iget-object v4, v2, Lcom/google/android/gms/ads/internal/Y;->rN:Lcom/google/android/gms/internal/ads/zzacp;

    move-object/from16 v26, v4

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/Y;->Zo()Ljava/lang/String;

    move-result-object v27

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->tp()Lcom/google/android/gms/internal/ads/gl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/gl;->j6()F

    move-result v28

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->tp()Lcom/google/android/gms/internal/ads/gl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/gl;->DW()Z

    move-result v29

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Nk;->tp(Landroid/content/Context;)I

    move-result v30

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Nk;->Hw(Landroid/view/View;)I

    move-result v31

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    move/from16 v32, v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Hk;->u7()Z

    move-result v33

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/pk;->v5()Z

    move-result v36

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->vy()Lcom/google/android/gms/internal/ads/oo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oo;->j6()I

    move-result v37

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Nk;->FH()Landroid/os/Bundle;

    move-result-object v38

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Ws()Lcom/google/android/gms/internal/ads/ol;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ol;->j6()Ljava/lang/String;

    move-result-object v39

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->gW:Lcom/google/android/gms/internal/ads/zzyv;

    move-object/from16 v40, v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Ws()Lcom/google/android/gms/internal/ads/ol;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ol;->DW()Z

    move-result v41

    invoke-static {}, Lcom/google/android/gms/internal/ads/Oc;->j6()Lcom/google/android/gms/internal/ads/Oc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Oc;->tp()Landroid/os/Bundle;

    move-result-object v42

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v2

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/Hk;->FH(Ljava/lang/String;)Z

    move-result v43

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v2, Lcom/google/android/gms/ads/internal/Y;->vy:Ljava/util/List;

    move-object/from16 v45, v4

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->j6()Z

    move-result v49

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/pk;->Zo()Z

    move-result v50

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    new-instance v56, Lcom/google/android/gms/internal/ads/Yh;

    move-object/from16 v2, v56

    invoke-static {}, Lcom/google/android/gms/internal/ads/Vk;->j6()Z

    move-result v51

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/pk;->J0()Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v4

    move-object/from16 p3, v5

    move-object/from16 v57, v6

    const-wide/16 v5, 0x3e8

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v3, v5, v6, v14}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v52, v3

    check-cast v52, Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/Nk;->J0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v53

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/Y;->yS:Lcom/google/android/gms/internal/ads/zzafz;

    move-object/from16 v54, v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/Nk;->J8(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v55

    move-object v3, v12

    move-object/from16 v4, p1

    move-object v12, v0

    move-object v14, v15

    move-object/from16 v15, p2

    move/from16 v48, p4

    move-object/from16 v5, p3

    move-object/from16 v6, v57

    invoke-direct/range {v2 .. v55}, Lcom/google/android/gms/internal/ads/Yh;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZIIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzacp;Ljava/lang/String;FZIIZZLjava/util/concurrent/Future;Ljava/lang/String;ZILandroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyv;ZLandroid/os/Bundle;ZLjava/util/concurrent/Future;Ljava/util/List;Ljava/lang/String;Ljava/util/List;IZZZLjava/util/ArrayList;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzafz;Landroid/os/Bundle;)V

    return-object v56
.end method


# virtual methods
.method public final DP()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/aa;->uC()V

    return-void
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/ab;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    :try_start_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ab;->vJ()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :catch_8
    move-exception p1

    goto :goto_29

    :cond_a
    move-object v1, v0

    :goto_b
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->a8:Labcd/x;

    if-eqz v2, :cond_1d

    if-eqz v1, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->a8:Labcd/x;

    invoke-virtual {v0, v1}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lb;

    :cond_1d
    if-nez v0, :cond_25

    const-string p1, "Mediation adapter invoked onCustomClick but no listeners were set."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_25
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/lb;->j6(Lcom/google/android/gms/internal/ads/ab;Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_28} :catch_8

    return-void

    :goto_29
    const-string p2, "Unable to call onCustomClick."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final DW(Lcom/google/android/gms/internal/ads/kk;Z)V
    .registers 11

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    if-eqz p1, :cond_24

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/kk;->Zo:Ljava/util/List;

    if-eqz v1, :cond_24

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/kk;->KD:Z

    if-nez v1, :cond_24

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/kk;->Zo:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/ads/internal/a;->v5(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/kk;->KD:Z

    :cond_24
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/kk;->cn:Z

    if-eqz v1, :cond_2b

    if-nez p2, :cond_2b

    return-void

    :cond_2b
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    if-eqz v1, :cond_4d

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/qe;->v5:Ljava/util/List;

    if-eqz v1, :cond_4d

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/qe;->v5:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/a;->v5(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    move-object v4, p1

    move v6, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/ye;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;Ljava/lang/String;ZLjava/util/List;)V

    :cond_4d
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v1, :cond_6b

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/pe;->gn:Ljava/util/List;

    if-eqz v1, :cond_6b

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/pe;->gn:Ljava/util/List;

    move-object v4, p1

    move v6, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/ye;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;Ljava/lang/String;ZLjava/util/List;)V

    :cond_6b
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/kk;->cn:Z

    return-void
.end method

.method final DW(Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->VH:Lcom/google/android/gms/internal/ads/zzwb;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/a;->VH:Lcom/google/android/gms/internal/ads/zzwb;

    goto :goto_15

    :cond_9
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->j6:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    if-eqz v2, :cond_15

    const-string v3, "_noRefresh"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_15
    :goto_15
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/kk;Z)Z

    move-result p1

    return p1
.end method

.method public final EQ()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/kk;Z)V

    return-void
.end method

.method public F3()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/aa;->EQ()V

    return-void
.end method

.method protected final Hw(Lcom/google/android/gms/internal/ads/zzwb;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/a;->Hw(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/aa;->J8:Z

    if-nez p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public J0()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-nez v0, :cond_c

    const-string v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    if-eqz v0, :cond_31

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qe;->FH:Ljava/util/List;

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qe;->FH:Ljava/util/List;

    iget-boolean v6, v3, Lcom/google/android/gms/internal/ads/kk;->I:Z

    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/ads/internal/a;->j6(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ye;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;Ljava/lang/String;ZLjava/util/List;)V

    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v0, :cond_54

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pe;->Zo:Ljava/util/List;

    if-eqz v0, :cond_54

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/pe;->Zo:Ljava/util/List;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ye;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;Ljava/lang/String;ZLjava/util/List;)V

    :cond_54
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/a;->J0()V

    return-void
.end method

.method public final RW()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/aa;->ep()V

    return-void
.end method

.method public final VH(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/internal/a;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final aX()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/aa;->FH(Lcom/google/android/gms/internal/ads/kk;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final cb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->aM:Ljava/lang/String;

    return-object v0
.end method

.method public ep()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/aa;->J8:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->Qs()V

    return-void
.end method

.method public er()V
    .registers 3

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Vk;->DW(Lcom/google/android/gms/internal/ads/Mo;)Z

    :cond_27
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v1, :cond_3b

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v1, :cond_3b

    :try_start_31
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Je;->er()V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_3b

    :catch_35
    move-exception v1

    const-string v1, "Could not resume mediation adapter."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_3b
    :goto_3b
    if-eqz v0, :cond_43

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->u7()Z

    move-result v0

    if-nez v0, :cond_48

    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/M;->FH()V

    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->gn:Lcom/google/android/gms/internal/ads/rE;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rE;->Hw(Lcom/google/android/gms/internal/ads/kk;)V

    return-void
.end method

.method public gM()V
    .registers 2

    const-string v0, "Mediated ad does not support onVideoEnd callback"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void
.end method

.method public final h2()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_2b

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->aM:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Mediation adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " refreshed, but mediation adapters should never refresh."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/kk;Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/aa;->DW(Lcom/google/android/gms/internal/ads/kk;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->g0()V

    return-void
.end method

.method protected hG()Z
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public final hx()V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/ca;->j6(Lcom/google/android/gms/ads/internal/M;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/kk;)V
    .registers 9

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/kk;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v0, :cond_53

    const-string v0, "Disable the debug gesture detector on the mediation ad frame."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Z;->Hw()V

    :cond_15
    const-string v0, "Pinging network fill URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/pe;->tp:Ljava/util/List;

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ye;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;Ljava/lang/String;ZLjava/util/List;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    if-eqz v0, :cond_61

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qe;->VH:Ljava/util/List;

    if-eqz v0, :cond_61

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_61

    const-string v0, "Pinging urls remotely"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/qe;->VH:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_61

    :cond_53
    const-string v0, "Enable the debug gesture detector on the admob ad frame."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Z;->FH()V

    :cond_61
    :goto_61
    iget v0, p1, Lcom/google/android/gms/internal/ads/kk;->Hw:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_89

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    if-eqz v0, :cond_89

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qe;->Zo:Ljava/util/List;

    if-eqz v0, :cond_89

    const-string v0, "Pinging no fill URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/qe;->Zo:Ljava/util/List;

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ye;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;Ljava/lang/String;ZLjava/util/List;)V

    :cond_89
    return-void
.end method

.method protected j6(Lcom/google/android/gms/internal/ads/kk;Z)V
    .registers 11

    const-string v0, "Ad state was null when trying to ping impression URLs."

    if-nez p1, :cond_8

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_8
    const/4 v1, 0x1

    if-nez p1, :cond_f

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_44

    :cond_f
    const-string v0, "Pinging Impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->we:Lcom/google/android/gms/internal/ads/mk;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mk;->DW()V

    :cond_1d
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->sG:Lcom/google/android/gms/internal/ads/YF;

    sget-object v2, Lcom/google/android/gms/internal/ads/_F;->Zo:Lcom/google/android/gms/internal/ads/_F;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/_F;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->v5:Ljava/util/List;

    if-eqz v0, :cond_44

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/kk;->SI:Z

    if-nez v0, :cond_44

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/kk;->v5:Ljava/util/List;

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/kk;->I:Z

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/ads/internal/a;->j6(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v1, p1, Lcom/google/android/gms/internal/ads/kk;->SI:Z

    :cond_44
    :goto_44
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/kk;->ro:Z

    if-eqz v0, :cond_4b

    if-nez p2, :cond_4b

    return-void

    :cond_4b
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    if-eqz v0, :cond_6f

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qe;->Hw:Ljava/util/List;

    if-eqz v0, :cond_6f

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qe;->Hw:Ljava/util/List;

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/kk;->I:Z

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gms/ads/internal/a;->j6(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v7

    move-object v4, p1

    move v6, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/ye;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;Ljava/lang/String;ZLjava/util/List;)V

    :cond_6f
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v0, :cond_8d

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pe;->VH:Ljava/util/List;

    if-eqz v0, :cond_8d

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/pe;->VH:Ljava/util/List;

    move-object v4, p1

    move v6, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/ye;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;Ljava/lang/String;ZLjava/util/List;)V

    :cond_8d
    iput-boolean v1, p1, Lcom/google/android/gms/internal/ads/kk;->ro:Z

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Yh;Lcom/google/android/gms/internal/ads/D;)Z
    .registers 7

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    const-string v0, "seq_num"

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Yh;->VH:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request_id"

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Yh;->a8:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "session_id"

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Yh;->gn:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Yh;->Zo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_26

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_version"

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->j6()Lcom/google/android/gms/internal/ads/Ah;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->we:Lcom/google/android/gms/ads/internal/ta;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ta;->Hw:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/Yh;->DW:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    const-string v3, "sdk_less_server_data"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_45

    new-instance v2, Lcom/google/android/gms/internal/ads/oi;

    invoke-direct {v2, v0, p1, p0, v1}, Lcom/google/android/gms/internal/ads/oi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Yh;Lcom/google/android/gms/internal/ads/Bh;Lcom/google/android/gms/internal/ads/zzur;)V

    goto :goto_4a

    :cond_45
    new-instance v2, Lcom/google/android/gms/internal/ads/Ch;

    invoke-direct {v2, v0, p1, p0, v1}, Lcom/google/android/gms/internal/ads/Ch;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Yh;Lcom/google/android/gms/internal/ads/Bh;Lcom/google/android/gms/internal/ads/zzur;)V

    :goto_4a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Ak;->v5()Lcom/google/android/gms/internal/ads/Hm;

    iput-object v2, p2, Lcom/google/android/gms/ads/internal/Y;->VH:Lcom/google/android/gms/internal/ads/Ak;

    const/4 p1, 0x1

    return p1
.end method

.method protected j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 4

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/kk;->Mr:Lcom/google/android/gms/internal/ads/se;

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/se;->j6(Lcom/google/android/gms/internal/ads/re;)V

    :cond_a
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/kk;->Mr:Lcom/google/android/gms/internal/ads/se;

    if-eqz p1, :cond_11

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/se;->j6(Lcom/google/android/gms/internal/ads/re;)V

    :cond_11
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    if-eqz p1, :cond_1a

    iget p2, p1, Lcom/google/android/gms/internal/ads/qe;->j3:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/qe;->Mr:I

    goto :goto_1c

    :cond_1a
    const/4 p2, 0x0

    const/4 p1, 0x0

    :goto_1c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->cn:Lcom/google/android/gms/internal/ads/xk;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/xk;->j6(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/D;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/D;I)Z

    move-result p1

    return p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/D;I)Z
    .registers 15

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/aa;->hG()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Hk;->DW()Lcom/google/android/gms/internal/ads/jF;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1c

    move-object v0, v2

    goto :goto_20

    :cond_1c
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nk;->j6(Lcom/google/android/gms/internal/ads/jF;)Landroid/os/Bundle;

    move-result-object v0

    :goto_20
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/M;->j6()V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput v1, v3, Lcom/google/android/gms/ads/internal/Y;->cb:I

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->gM:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Hk;->VH()Lcom/google/android/gms/internal/ads/ok;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->J0()Lcom/google/android/gms/ads/internal/e;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v4, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v9, v4, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    if-eqz v1, :cond_59

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ok;->Hw()Ljava/lang/String;

    move-result-object v2

    :cond_59
    move-object v8, v2

    const/4 v2, 0x0

    const/4 v10, 0x0

    move-object v4, v5

    move-object v5, v6

    move v6, v2

    move-object v7, v1

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gms/ads/internal/e;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;ZLcom/google/android/gms/internal/ads/ok;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    move-object v2, v1

    :cond_64
    invoke-direct {p0, p1, v0, v2, p3}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/zzwb;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/ok;I)Lcom/google/android/gms/internal/ads/Yh;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/Yh;Lcom/google/android/gms/internal/ads/D;)Z

    move-result p1

    return p1
.end method

.method protected j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/kk;Z)Z
    .registers 8

    if-nez p3, :cond_31

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result p3

    if-eqz p3, :cond_31

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/kk;->u7:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_18

    :goto_12
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/gms/ads/internal/M;->j6(Lcom/google/android/gms/internal/ads/zzwb;J)V

    goto :goto_31

    :cond_18
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    if-eqz p3, :cond_23

    iget-wide v0, p3, Lcom/google/android/gms/internal/ads/qe;->tp:J

    cmp-long p3, v0, v2

    if-lez p3, :cond_23

    goto :goto_12

    :cond_23
    iget-boolean p3, p2, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    if-nez p3, :cond_31

    iget p2, p2, Lcom/google/android/gms/internal/ads/kk;->Hw:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_31

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/M;->DW(Lcom/google/android/gms/internal/ads/zzwb;)V

    :cond_31
    :goto_31
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/M;->v5()Z

    move-result p1

    return p1
.end method

.method public ji()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/aa;->J0()V

    return-void
.end method

.method public final k4()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->OM()V

    return-void
.end method

.method public final onPause()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->gn:Lcom/google/android/gms/internal/ads/rE;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rE;->FH(Lcom/google/android/gms/internal/ads/kk;)V

    return-void
.end method

.method public final onResume()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->gn:Lcom/google/android/gms/internal/ads/rE;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rE;->Hw(Lcom/google/android/gms/internal/ads/kk;)V

    return-void
.end method

.method public pause()V
    .registers 3

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v1, :cond_21

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Vk;->j6(Lcom/google/android/gms/internal/ads/Mo;)Z

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_35

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v0, :cond_35

    :try_start_2b
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Je;->pause()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_35

    :catch_2f
    move-exception v0

    const-string v0, "Could not pause mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->gn:Lcom/google/android/gms/internal/ads/rE;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rE;->FH(Lcom/google/android/gms/internal/ads/kk;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/M;->DW()V

    return-void
.end method

.method public final qU()V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/ba;->j6(Lcom/google/android/gms/ads/internal/M;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showInterstitial()V
    .registers 2

    const-string v0, "showInterstitial is not supported for current ad type"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void
.end method

.method public uC()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/aa;->J8:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->K3()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->we:Lcom/google/android/gms/internal/ads/mk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mk;->Hw()V

    return-void
.end method
