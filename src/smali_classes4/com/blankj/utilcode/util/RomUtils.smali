.class public final Lcom/blankj/utilcode/util/RomUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/RomUtils$RomInfo;
    }
.end annotation


# static fields
.field private static final ROM_360:[Ljava/lang/String;

.field private static final ROM_COOLPAD:[Ljava/lang/String;

.field private static final ROM_GIONEE:[Ljava/lang/String;

.field private static final ROM_GOOGLE:[Ljava/lang/String;

.field private static final ROM_HTC:[Ljava/lang/String;

.field private static final ROM_HUAWEI:[Ljava/lang/String;

.field private static final ROM_LEECO:[Ljava/lang/String;

.field private static final ROM_LENOVO:[Ljava/lang/String;

.field private static final ROM_LG:[Ljava/lang/String;

.field private static final ROM_MEIZU:[Ljava/lang/String;

.field private static final ROM_MOTOROLA:[Ljava/lang/String;

.field private static final ROM_NUBIA:[Ljava/lang/String;

.field private static final ROM_ONEPLUS:[Ljava/lang/String;

.field private static final ROM_OPPO:[Ljava/lang/String;

.field private static final ROM_SAMSUNG:[Ljava/lang/String;

.field private static final ROM_SMARTISAN:[Ljava/lang/String;

.field private static final ROM_SONY:[Ljava/lang/String;

.field private static final ROM_VIVO:[Ljava/lang/String;

.field private static final ROM_XIAOMI:[Ljava/lang/String;

.field private static final ROM_ZTE:[Ljava/lang/String;

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final VERSION_PROPERTY_360:Ljava/lang/String; = "ro.build.uiversion"

.field private static final VERSION_PROPERTY_HUAWEI:Ljava/lang/String; = "ro.build.version.emui"

.field private static final VERSION_PROPERTY_LEECO:Ljava/lang/String; = "ro.letv.release.version"

.field private static final VERSION_PROPERTY_NUBIA:Ljava/lang/String; = "ro.build.rom.id"

.field private static final VERSION_PROPERTY_ONEPLUS:Ljava/lang/String; = "ro.rom.version"

.field private static final VERSION_PROPERTY_OPPO:Ljava/lang/String; = "ro.build.version.opporom"

.field private static final VERSION_PROPERTY_VIVO:Ljava/lang/String; = "ro.vivo.os.build.display.id"

.field private static final VERSION_PROPERTY_XIAOMI:Ljava/lang/String; = "ro.build.version.incremental"

.field private static final VERSION_PROPERTY_ZTE:Ljava/lang/String; = "ro.build.MiFavor_version"

.field private static bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "huawei"

    aput-object v1, v0, v2

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_HUAWEI:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "vivo"

    aput-object v1, v0, v2

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_VIVO:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "xiaomi"

    aput-object v1, v0, v2

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_XIAOMI:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "oppo"

    aput-object v1, v0, v2

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_OPPO:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "leeco"

    aput-object v1, v0, v2

    const-string v1, "letv"

    aput-object v1, v0, v3

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_LEECO:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "360"

    aput-object v1, v0, v2

    const-string v1, "qiku"

    aput-object v1, v0, v3

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_360:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "zte"

    aput-object v1, v0, v2

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_ZTE:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "oneplus"

    aput-object v1, v0, v2

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_ONEPLUS:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "nubia"

    aput-object v1, v0, v2

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_NUBIA:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "coolpad"

    aput-object v1, v0, v2

    const-string v1, "yulong"

    aput-object v1, v0, v3

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_COOLPAD:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "lg"

    aput-object v1, v0, v2

    const-string v1, "lge"

    aput-object v1, v0, v3

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_LG:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "google"

    aput-object v1, v0, v2

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_GOOGLE:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "samsung"

    aput-object v1, v0, v2

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_SAMSUNG:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "meizu"

    aput-object v1, v0, v2

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_MEIZU:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "lenovo"

    aput-object v1, v0, v2

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_LENOVO:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "smartisan"

    aput-object v1, v0, v2

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_SMARTISAN:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "htc"

    aput-object v1, v0, v2

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_HTC:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "sony"

    aput-object v1, v0, v2

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_SONY:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "gionee"

    aput-object v1, v0, v2

    const-string v1, "amigo"

    aput-object v1, v0, v3

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_GIONEE:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "motorola"

    aput-object v1, v0, v2

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_MOTOROLA:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getBrand()Ljava/lang/String;
    .registers 2

    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_d

    move-result-object v0

    :goto_c
    return-object v0

    :catchall_d
    move-exception v0

    :cond_e
    const-string v0, "unknown"

    goto :goto_c
.end method

.method private static getManufacturer()Ljava/lang/String;
    .registers 2

    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_d

    move-result-object v0

    :goto_c
    return-object v0

    :catchall_d
    move-exception v0

    :cond_e
    const-string v0, "unknown"

    goto :goto_c
.end method

.method public static getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getBrand()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_HUAWEI:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->ROM_HUAWEI:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lcom/blankj/utilcode/util/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-le v2, v4, :cond_40

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    aget-object v1, v1, v4

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    :goto_3d
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    goto :goto_6

    :cond_40
    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3d

    :cond_46
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_VIVO:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->ROM_VIVO:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    const-string v1, "ro.vivo.os.build.display.id"

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    goto :goto_6

    :cond_65
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_XIAOMI:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->ROM_XIAOMI:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    const-string v1, "ro.build.version.incremental"

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    goto :goto_6

    :cond_84
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_OPPO:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a4

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->ROM_OPPO:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    const-string v1, "ro.build.version.opporom"

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    goto/16 :goto_6

    :cond_a4
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_LEECO:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c4

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->ROM_LEECO:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    const-string v1, "ro.letv.release.version"

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    goto/16 :goto_6

    :cond_c4
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_360:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e4

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->ROM_360:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    const-string v1, "ro.build.uiversion"

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    goto/16 :goto_6

    :cond_e4
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_ZTE:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_104

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->ROM_ZTE:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    const-string v1, "ro.build.MiFavor_version"

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    goto/16 :goto_6

    :cond_104
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_ONEPLUS:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_124

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->ROM_ONEPLUS:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    const-string v1, "ro.rom.version"

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    goto/16 :goto_6

    :cond_124
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_NUBIA:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_144

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->ROM_NUBIA:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    const-string v1, "ro.build.rom.id"

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    goto/16 :goto_6

    :cond_144
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_COOLPAD:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_164

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->ROM_COOLPAD:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    :goto_155
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    const-string v1, ""

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    goto/16 :goto_6

    :cond_164
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_LG:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_176

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->ROM_LG:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_155

    :cond_176
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_GOOGLE:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_188

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->ROM_GOOGLE:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_155

    :cond_188
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_SAMSUNG:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19a

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->ROM_SAMSUNG:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_155

    :cond_19a
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_MEIZU:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ac

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->ROM_MEIZU:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_155

    :cond_1ac
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_LENOVO:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1be

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->ROM_LENOVO:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_155

    :cond_1be
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_SMARTISAN:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d0

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->ROM_SMARTISAN:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_155

    :cond_1d0
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_HTC:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e3

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->ROM_HTC:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_155

    :cond_1e3
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_SONY:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f6

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->ROM_SONY:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_155

    :cond_1f6
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_GIONEE:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_209

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->ROM_GIONEE:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_155

    :cond_209
    sget-object v2, Lcom/blankj/utilcode/util/RomUtils;->ROM_MOTOROLA:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21c

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    sget-object v1, Lcom/blankj/utilcode/util/RomUtils;->ROM_MOTOROLA:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_155

    :cond_21c
    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->bean:Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_155
.end method

.method private static getRomVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {p0}, Lcom/blankj/utilcode/util/RomUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_18
    :try_start_18
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_30

    move-result-object v0

    :cond_24
    :goto_24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v0, "unknown"

    :cond_2c
    return-object v0

    :cond_2d
    const-string v0, ""

    goto :goto_a

    :catchall_30
    move-exception v1

    goto :goto_24
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/blankj/utilcode/util/RomUtils;->getSystemPropertyByShell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0}, Lcom/blankj/utilcode/util/RomUtils;->getSystemPropertyByStream(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_a

    invoke-static {p0}, Lcom/blankj/utilcode/util/RomUtils;->getSystemPropertyByReflect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private static getSystemPropertyByReflect(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    :goto_2a
    return-object v0

    :catch_2b
    move-exception v0

    const-string v0, ""

    goto :goto_2a
.end method

.method private static getSystemPropertyByShell(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x400

    invoke-direct {v1, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2a} :catch_4c
    .catchall {:try_start_1 .. :try_end_2a} :catchall_44

    :try_start_2a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_3a
    .catchall {:try_start_2a .. :try_end_2d} :catchall_4f

    move-result-object v0

    if-eqz v0, :cond_34

    :try_start_30
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_51

    :goto_33
    return-object v0

    :cond_34
    :try_start_34
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_42

    :cond_37
    :goto_37
    const-string v0, ""

    goto :goto_33

    :catch_3a
    move-exception v0

    move-object v0, v1

    :goto_3c
    if-eqz v0, :cond_37

    :try_start_3e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_37

    :catch_42
    move-exception v0

    goto :goto_37

    :catchall_44
    move-exception v0

    move-object v1, v2

    :goto_46
    if-eqz v1, :cond_4b

    :try_start_48
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_53

    :cond_4b
    :goto_4b
    throw v0

    :catch_4c
    move-exception v0

    move-object v0, v2

    goto :goto_3c

    :catchall_4f
    move-exception v0

    goto :goto_46

    :catch_51
    move-exception v1

    goto :goto_33

    :catch_53
    move-exception v1

    goto :goto_4b
.end method

.method private static getSystemPropertyByStream(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "build.prop"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result-object v0

    :goto_1e
    return-object v0

    :catch_1f
    move-exception v0

    const-string v0, ""

    goto :goto_1e
.end method

.method public static is360()Z
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_360:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCoolpad()Z
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_COOLPAD:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGionee()Z
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_GIONEE:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGoogle()Z
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_GOOGLE:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHtc()Z
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_HTC:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHuawei()Z
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_HUAWEI:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLeeco()Z
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_LEECO:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLenovo()Z
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_LENOVO:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLg()Z
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_LG:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMeizu()Z
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_MEIZU:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMotorola()Z
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_MOTOROLA:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNubia()Z
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_NUBIA:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOneplus()Z
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_ONEPLUS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOppo()Z
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_OPPO:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static varargs isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    array-length v2, p2

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_14

    aget-object v3, p2, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_13
    const/4 v0, 0x1

    :cond_14
    return v0

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static isSamsung()Z
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_SAMSUNG:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSmartisan()Z
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_SMARTISAN:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSony()Z
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_SONY:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVivo()Z
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_VIVO:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isXiaomi()Z
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_XIAOMI:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isZte()Z
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/RomUtils;->ROM_ZTE:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/RomUtils;->getRomInfo()Lcom/blankj/utilcode/util/RomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
