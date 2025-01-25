.class public Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;
.super Ljava/lang/Object;
.source "ProjectUtils.java"


# static fields
.field private static final reflect:Lcom/blankj/utilcode/util/ReflectUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    invoke-static {}, Labcd/AbcdAccess$_CC;->Vi_class()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->reflect:Lcom/blankj/utilcode/util/ReflectUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentLibraryProjects(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->J8()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static currentMainProject()Ljava/lang/String;
    .registers 1

    .line 21
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static currentProjects()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->Ws()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_f

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_f
    return-object v0
.end method

.method public static getAapt2Path()Ljava/lang/String;
    .registers 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/App;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/libaapt2.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAndroidJar()Ljava/lang/String;
    .registers 5

    .line 54
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "abcd.vj"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "android.jar"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "DW"

    invoke-virtual {v1, v3, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "user_androidjar"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAssets(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 59
    sget-object v0, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->reflect:Lcom/blankj/utilcode/util/ReflectUtils;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "QX"

    invoke-virtual {v0, p0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getInjectedXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 76
    sget-object v0, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->reflect:Lcom/blankj/utilcode/util/ReflectUtils;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "we"

    invoke-virtual {v0, p0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getLibrariesAssets(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 135
    new-instance v0, Ljava/io/File;

    const-string v1, "assets"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getLibraryAarPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xd

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".aar"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLibraryPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 100
    sget-object v0, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->reflect:Lcom/blankj/utilcode/util/ReflectUtils;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "u7"

    invoke-virtual {v0, p0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getManifestXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 82
    sget-object v0, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->reflect:Lcom/blankj/utilcode/util/ReflectUtils;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    const/4 v2, 0x0

    aput-object v2, v1, p0

    const-string p0, "FH"

    invoke-virtual {v0, p0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getMergedXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 71
    sget-object v0, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->reflect:Lcom/blankj/utilcode/util/ReflectUtils;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "XL"

    invoke-virtual {v0, p0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getProjectBin(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 118
    sget-object v0, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->reflect:Lcom/blankj/utilcode/util/ReflectUtils;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "FH"

    invoke-virtual {v0, p0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getProjectGen(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 112
    sget-object v0, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->reflect:Lcom/blankj/utilcode/util/ReflectUtils;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "tp"

    invoke-virtual {v0, p0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getProjectJni(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 106
    sget-object v0, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->reflect:Lcom/blankj/utilcode/util/ReflectUtils;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "J8"

    invoke-virtual {v0, p0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getResource(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 65
    sget-object v0, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->reflect:Lcom/blankj/utilcode/util/ReflectUtils;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Mr"

    invoke-virtual {v0, p0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getResourcesAab(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 94
    invoke-static {p0}, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->getResourcesAp_(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "proto-format.zip"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResourcesAp_(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 88
    sget-object v0, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->reflect:Lcom/blankj/utilcode/util/ReflectUtils;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "a8"

    invoke-virtual {v0, p0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isLibraryProject(Ljava/lang/String;)Z
    .registers 2

    .line 44
    invoke-static {}, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->we()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static we()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->we()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_f

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_f
    return-object v0
.end method
