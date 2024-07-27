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
    .registers 9

    new-instance v0, Lcom/google/android/gms/ads/internal/Y;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/ads/internal/Y;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p4, v1, p6}, Lcom/google/android/gms/ads/internal/aa;-><init>(Lcom/google/android/gms/ads/internal/Y;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/ads/internal/M;Lcom/google/android/gms/ads/internal/ta;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/internal/Y;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/ads/internal/M;Lcom/google/android/gms/ads/internal/ta;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p4}, Lcom/google/android/gms/ads/internal/a;-><init>(Lcom/google/android/gms/ads/internal/Y;Lcom/google/android/gms/ads/internal/M;Lcom/google/android/gms/ads/internal/ta;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/aa;->J0:Lcom/google/android/gms/internal/ads/Ge;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/aa;->J8:Z

    return-void
.end method

.method static FH(Lcom/google/android/gms/internal/ads/kk;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kk;->aM:Ljava/lang/String;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/pe;->EQ:Ljava/lang/String;

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "class_name"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/zzwb;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/ok;I)Lcom/google/android/gms/internal/ads/Yh;
    .registers 64

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    const/4 v7, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v4

    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->DW(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    new-array v5, v4, [I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v4, v5}, Landroid/widget/ViewSwitcher;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    aget v8, v5, v4

    const/4 v4, 0x1

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->getWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->getHeight()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->isShown()Z

    move-result v6

    if-eqz v6, :cond_2

    add-int v6, v8, v9

    if-lez v6, :cond_2

    add-int v6, v5, v12

    if-lez v6, :cond_2

    move-object/from16 v0, v18

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v8, v6, :cond_2

    move-object/from16 v0, v18

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v5, v6, :cond_2

    :goto_1
    new-instance v6, Landroid/os/Bundle;

    const/4 v13, 0x5

    invoke-direct {v6, v13}, Landroid/os/Bundle;-><init>(I)V

    const-string v13, "x"

    invoke-virtual {v6, v13, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "y"

    invoke-virtual {v6, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "width"

    invoke-virtual {v6, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "height"

    invoke-virtual {v6, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "visible"

    invoke-virtual {v6, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/pk;->J8()Lcom/google/android/gms/internal/ads/yk;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v9, v9, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/internal/ads/yk;->j6(Lcom/google/android/gms/common/util/e;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/mk;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/ads/internal/Y;->we:Lcom/google/android/gms/internal/ads/mk;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->we:Lcom/google/android/gms/internal/ads/mk;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/mk;->j6(Lcom/google/android/gms/internal/ads/zzwb;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v4, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v8, v4, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    invoke-static {v5, v8, v4}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzwf;)Ljava/lang/String;

    move-result-object v23

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->XL:Lcom/google/android/gms/internal/ads/WH;

    if-eqz v4, :cond_0

    :try_start_1
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/WH;->getValue()J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v24

    :cond_0
    :goto_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/pk;->J8()Lcom/google/android/gms/internal/ads/yk;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/internal/ads/yk;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/vk;)Landroid/os/Bundle;

    move-result-object v15

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    invoke-virtual {v4}, Labcd/x;->size()I

    move-result v4

    if-ge v5, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    invoke-virtual {v4, v5}, Labcd/x;->DW(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/Y;->a8:Labcd/x;

    invoke-virtual {v8, v4}, Labcd/x;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/Y;->a8:Labcd/x;

    invoke-virtual {v8, v4}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    move-object/from16 v0, v50

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_4

    :catch_0
    move-exception v4

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v4

    const-string v4, "Cannot get correlation id, default to 0."

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    new-instance v4, Lcom/google/android/gms/ads/internal/da;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/gms/ads/internal/da;-><init>(Lcom/google/android/gms/ads/internal/aa;)V

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v37

    new-instance v4, Lcom/google/android/gms/ads/internal/ea;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/gms/ads/internal/ea;-><init>(Lcom/google/android/gms/ads/internal/aa;)V

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v47

    if-eqz p3, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/ok;->FH()Ljava/lang/String;

    move-result-object v38

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->ro:Ljava/util/List;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    if-eqz v11, :cond_8

    iget v4, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Hk;->gn()I

    move-result v5

    if-le v4, v5, :cond_7

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Hk;->j6()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/Hk;->DW(I)V

    :cond_5
    const/16 v49, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v8, v4, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v9, v4, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->we:Lcom/google/android/gms/internal/ads/mk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/mk;->v5()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->Zo()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v14, v4, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v0, v4, Lcom/google/android/gms/ads/internal/Y;->ro:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Hk;->Zo()Z

    move-result v19

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v22, v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/p;->j6()Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v4, Lcom/google/android/gms/ads/internal/Y;->j6:Ljava/lang/String;

    move-object/from16 v28, v0

    iget-object v0, v4, Lcom/google/android/gms/ads/internal/Y;->rN:Lcom/google/android/gms/internal/ads/zzacp;

    move-object/from16 v29, v0

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/Y;->Zo()Ljava/lang/String;

    move-result-object v30

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->tp()Lcom/google/android/gms/internal/ads/gl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/gl;->j6()F

    move-result v31

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->tp()Lcom/google/android/gms/internal/ads/gl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/gl;->DW()Z

    move-result v32

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Nk;->tp(Landroid/content/Context;)I

    move-result v33

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Nk;->Hw(Landroid/view/View;)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    instance-of v0, v4, Landroid/app/Activity;

    move/from16 v35, v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Hk;->u7()Z

    move-result v36

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/pk;->v5()Z

    move-result v39

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->vy()Lcom/google/android/gms/internal/ads/oo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/oo;->j6()I

    move-result v40

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Nk;->FH()Landroid/os/Bundle;

    move-result-object v41

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Ws()Lcom/google/android/gms/internal/ads/ol;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/ol;->j6()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v4, Lcom/google/android/gms/ads/internal/Y;->gW:Lcom/google/android/gms/internal/ads/zzyv;

    move-object/from16 v43, v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Ws()Lcom/google/android/gms/internal/ads/ol;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/ol;->DW()Z

    move-result v44

    invoke-static {}, Lcom/google/android/gms/internal/ads/Oc;->j6()Lcom/google/android/gms/internal/ads/Oc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Oc;->tp()Landroid/os/Bundle;

    move-result-object v45

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/Hk;->FH(Ljava/lang/String;)Z

    move-result v46

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v4, Lcom/google/android/gms/ads/internal/Y;->vy:Ljava/util/List;

    move-object/from16 v48, v0

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->j6()Z

    move-result v52

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/pk;->Zo()Z

    move-result v53

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    new-instance v5, Lcom/google/android/gms/internal/ads/Yh;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Vk;->j6()Z

    move-result v54

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/pk;->J0()Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v4

    const/4 v7, 0x0

    const-wide/16 v56, 0x3e8

    sget-object v18, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v56

    move-object/from16 v2, v18

    invoke-static {v4, v7, v0, v1, v2}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/Nk;->J0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v4, Lcom/google/android/gms/ads/internal/Y;->yS:Lcom/google/android/gms/internal/ads/zzafz;

    move-object/from16 v57, v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/Nk;->J8(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v58

    move-object/from16 v7, p1

    move-object/from16 v18, p2

    move/from16 v51, p4

    invoke-direct/range {v5 .. v58}, Lcom/google/android/gms/internal/ads/Yh;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZIIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzacp;Ljava/lang/String;FZIIZZLjava/util/concurrent/Future;Ljava/lang/String;ZILandroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyv;ZLandroid/os/Bundle;ZLjava/util/concurrent/Future;Ljava/util/List;Ljava/lang/String;Ljava/util/List;IZZZLjava/util/ArrayList;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzafz;Landroid/os/Bundle;)V

    return-object v5

    :cond_6
    const/16 v38, 0x0

    goto/16 :goto_5

    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Hk;->EQ()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v49

    goto/16 :goto_7

    :cond_8
    move v4, v7

    goto/16 :goto_6
.end method


# virtual methods
.method public final DP()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/aa;->uC()V

    return-void
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/ab;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ab;->vJ()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->a8:Labcd/x;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->a8:Labcd/x;

    invoke-virtual {v1, v0}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lb;

    move-object v1, v0

    :cond_0
    if-nez v1, :cond_2

    const-string v0, "Mediation adapter invoked onCustomClick but no listeners were set."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/lb;->j6(Lcom/google/android/gms/internal/ads/ab;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Unable to call onCustomClick."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected final DW(Lcom/google/android/gms/internal/ads/kk;Z)V
    .registers 10

    const/4 v6, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->Zo:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/kk;->KD:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/kk;->Zo:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/a;->v5(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v6, p1, Lcom/google/android/gms/internal/ads/kk;->KD:Z

    :cond_2
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/kk;->cn:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_0

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qe;->v5:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/qe;->v5:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/a;->v5(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    move-object v2, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ye;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;Ljava/lang/String;ZLjava/util/List;)V

    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pe;->gn:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/pe;->gn:Ljava/util/List;

    move-object v2, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ye;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;Ljava/lang/String;ZLjava/util/List;)V

    :cond_5
    iput-boolean v6, p1, Lcom/google/android/gms/internal/ads/kk;->cn:Z

    goto :goto_0
.end method

.method final DW(Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->VH:Lcom/google/android/gms/internal/ads/zzwb;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/a;->VH:Lcom/google/android/gms/internal/ads/zzwb;

    :cond_0
    :goto_0
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/kk;Z)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->j6:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    const-string v3, "_noRefresh"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
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
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/a;->Hw(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/aa;->J8:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public J0()V
    .registers 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-nez v0, :cond_0

    const-string v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qe;->FH:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v3, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v3, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/qe;->FH:Ljava/util/List;

    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/kk;->I:Z

    invoke-virtual {p0, v5, v6}, Lcom/google/android/gms/ads/internal/a;->j6(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ye;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;Ljava/lang/String;ZLjava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pe;->Zo:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v3, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v3, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/pe;->Zo:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ye;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;Ljava/lang/String;ZLjava/util/List;)V

    :cond_2
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/a;->J0()V

    goto :goto_0
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

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/aa;->FH(Lcom/google/android/gms/internal/ads/kk;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final cb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->aM:Ljava/lang/String;

    goto :goto_0
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

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_4

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Vk;->DW(Lcom/google/android/gms/internal/ads/Mo;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Je;->er()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->u7()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/M;->FH()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->gn:Lcom/google/android/gms/internal/ads/rE;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rE;->Hw(Lcom/google/android/gms/internal/ads/kk;)V

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Could not resume mediation adapter."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public gM()V
    .registers 2

    const-string v0, "Mediated ad does not support onVideoEnd callback"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void
.end method

.method public final h2()V
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_0

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

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/kk;Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/ads/internal/aa;->DW(Lcom/google/android/gms/internal/ads/kk;Z)V

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

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
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
    .registers 8

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/kk;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v0, :cond_3

    const-string v0, "Disable the debug gesture detector on the mediation ad frame."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Z;->Hw()V

    :cond_0
    const-string v0, "Pinging network fill URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/pe;->tp:Ljava/util/List;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ye;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;Ljava/lang/String;ZLjava/util/List;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qe;->VH:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "Pinging urls remotely"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/qe;->VH:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/util/List;)V

    :cond_1
    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/kk;->Hw:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qe;->Zo:Ljava/util/List;

    if-eqz v0, :cond_2

    const-string v0, "Pinging no fill URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/qe;->Zo:Ljava/util/List;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ye;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;Ljava/lang/String;ZLjava/util/List;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "Enable the debug gesture detector on the admob ad frame."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Z;->FH()V

    goto :goto_0
.end method

.method protected j6(Lcom/google/android/gms/internal/ads/kk;Z)V
    .registers 10

    const/4 v6, 0x1

    if-nez p1, :cond_1

    const-string v0, "Ad state was null when trying to ping impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_6

    const-string v0, "Ad state was null when trying to ping impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/kk;->ro:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_0

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qe;->Hw:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/qe;->Hw:Ljava/util/List;

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/kk;->I:Z

    invoke-virtual {p0, v2, v4}, Lcom/google/android/gms/ads/internal/a;->j6(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v5

    move-object v2, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ye;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;Ljava/lang/String;ZLjava/util/List;)V

    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pe;->VH:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/pe;->VH:Ljava/util/List;

    move-object v2, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ye;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;Ljava/lang/String;ZLjava/util/List;)V

    :cond_5
    iput-boolean v6, p1, Lcom/google/android/gms/internal/ads/kk;->ro:Z

    goto :goto_0

    :cond_6
    const-string v0, "Pinging Impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->we:Lcom/google/android/gms/internal/ads/mk;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mk;->DW()V

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->sG:Lcom/google/android/gms/internal/ads/YF;

    sget-object v1, Lcom/google/android/gms/internal/ads/_F;->Zo:Lcom/google/android/gms/internal/ads/_F;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/_F;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->v5:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/kk;->SI:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/kk;->v5:Ljava/util/List;

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/kk;->I:Z

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/ads/internal/a;->j6(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v6, p1, Lcom/google/android/gms/internal/ads/kk;->SI:Z

    goto :goto_1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Yh;Lcom/google/android/gms/internal/ads/D;)Z
    .registers 8

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

    if-eqz v0, :cond_0

    const-string v1, "app_version"

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->j6()Lcom/google/android/gms/internal/ads/Ah;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->we:Lcom/google/android/gms/ads/internal/ta;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/ta;->Hw:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Yh;->DW:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    const-string v4, "sdk_less_server_data"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/oi;

    invoke-direct {v0, v2, p1, p0, v3}, Lcom/google/android/gms/internal/ads/oi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Yh;Lcom/google/android/gms/internal/ads/Bh;Lcom/google/android/gms/internal/ads/zzur;)V

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ak;->v5()Lcom/google/android/gms/internal/ads/Hm;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/Y;->VH:Lcom/google/android/gms/internal/ads/Ak;

    const/4 v0, 0x1

    return v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/Ch;

    invoke-direct {v0, v2, p1, p0, v3}, Lcom/google/android/gms/internal/ads/Ch;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Yh;Lcom/google/android/gms/internal/ads/Bh;Lcom/google/android/gms/internal/ads/zzur;)V

    goto :goto_0
.end method

.method protected j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->Mr:Lcom/google/android/gms/internal/ads/se;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/se;->j6(Lcom/google/android/gms/internal/ads/re;)V

    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/kk;->Mr:Lcom/google/android/gms/internal/ads/se;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/se;->j6(Lcom/google/android/gms/internal/ads/re;)V

    :cond_1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/google/android/gms/internal/ads/qe;->j3:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/qe;->Mr:I

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->cn:Lcom/google/android/gms/internal/ads/xk;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/xk;->j6(II)V

    const/4 v0, 0x1

    return v0

    :cond_2
    move v0, v1

    move v2, v1

    goto :goto_0
.end method

.method public j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/D;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/D;I)Z

    move-result v0

    return v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/D;I)Z
    .registers 13

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/aa;->hG()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Hk;->DW()Lcom/google/android/gms/internal/ads/jF;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v8, v7

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/M;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput v3, v0, Lcom/google/android/gms/ads/internal/Y;->cb:I

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->gM:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Hk;->VH()Lcom/google/android/gms/internal/ads/ok;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->J0()Lcom/google/android/gms/ads/internal/e;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v5, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v2, v5, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v6, v5, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/ok;->Hw()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/e;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;ZLcom/google/android/gms/internal/ads/ok;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    :goto_3
    invoke-direct {p0, p1, v8, v4, p3}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/zzwb;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/ok;I)Lcom/google/android/gms/internal/ads/Yh;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/Yh;Lcom/google/android/gms/internal/ads/D;)Z

    move-result v3

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nk;->j6(Lcom/google/android/gms/internal/ads/jF;)Landroid/os/Bundle;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :cond_2
    move-object v4, v7

    goto :goto_3

    :cond_3
    move-object v5, v7

    goto :goto_2
.end method

.method protected j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/kk;Z)Z
    .registers 10

    const-wide/16 v4, 0x0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/kk;->u7:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/ads/internal/M;->j6(Lcom/google/android/gms/internal/ads/zzwb;J)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/M;->v5()Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    if-eqz v0, :cond_2

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/qe;->tp:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/ads/internal/M;->j6(Lcom/google/android/gms/internal/ads/zzwb;J)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    if-nez v0, :cond_0

    iget v0, p2, Lcom/google/android/gms/internal/ads/kk;->Hw:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/M;->DW(Lcom/google/android/gms/internal/ads/zzwb;)V

    goto :goto_0
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

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Vk;->j6(Lcom/google/android/gms/internal/ads/Mo;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Je;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->gn:Lcom/google/android/gms/internal/ads/rE;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rE;->FH(Lcom/google/android/gms/internal/ads/kk;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/M;->DW()V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not pause mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_0
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
