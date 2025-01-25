.class Lcom/crashlytics/android/core/ua;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/ua$b;
    }
.end annotation


# static fields
.field private static final j6:Lcom/crashlytics/android/core/ua$b;


# instance fields
.field private final DW:Landroid/content/Context;

.field private final FH:Lcom/crashlytics/android/core/ua$a;

.field private Hw:Lcom/crashlytics/android/core/ra;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/crashlytics/android/core/ua$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/ua$b;-><init>(Lcom/crashlytics/android/core/ta;)V

    sput-object v0, Lcom/crashlytics/android/core/ua;->j6:Lcom/crashlytics/android/core/ua$b;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/core/ua$a;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/crashlytics/android/core/ua;-><init>(Landroid/content/Context;Lcom/crashlytics/android/core/ua$a;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/core/ua$a;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/ua;->DW:Landroid/content/Context;

    iput-object p2, p0, Lcom/crashlytics/android/core/ua;->FH:Lcom/crashlytics/android/core/ua$a;

    sget-object p1, Lcom/crashlytics/android/core/ua;->j6:Lcom/crashlytics/android/core/ua$b;

    iput-object p1, p0, Lcom/crashlytics/android/core/ua;->Hw:Lcom/crashlytics/android/core/ra;

    invoke-virtual {p0, p3}, Lcom/crashlytics/android/core/ua;->j6(Ljava/lang/String;)V

    return-void
.end method

.method private DW(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crashlytics-userlog-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".temp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/crashlytics/android/core/ua;->FH:Lcom/crashlytics/android/core/ua$a;

    invoke-interface {v1}, Lcom/crashlytics/android/core/ua$a;->j6()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private j6(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".temp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    return-object p1

    :cond_e
    const/16 v1, 0x14

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method DW()Lcom/crashlytics/android/core/d;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/ua;->Hw:Lcom/crashlytics/android/core/ra;

    invoke-interface {v0}, Lcom/crashlytics/android/core/ra;->DW()Lcom/crashlytics/android/core/d;

    move-result-object v0

    return-object v0
.end method

.method FH()[B
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/ua;->Hw:Lcom/crashlytics/android/core/ra;

    invoke-interface {v0}, Lcom/crashlytics/android/core/ra;->FH()[B

    move-result-object v0

    return-object v0
.end method

.method j6()V
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/ua;->Hw:Lcom/crashlytics/android/core/ra;

    invoke-interface {v0}, Lcom/crashlytics/android/core/ra;->Hw()V

    return-void
.end method

.method j6(JLjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/crashlytics/android/core/ua;->Hw:Lcom/crashlytics/android/core/ra;

    invoke-interface {v0, p1, p2, p3}, Lcom/crashlytics/android/core/ra;->j6(JLjava/lang/String;)V

    return-void
.end method

.method j6(Ljava/io/File;I)V
    .registers 4

    new-instance v0, Lcom/crashlytics/android/core/Ia;

    invoke-direct {v0, p1, p2}, Lcom/crashlytics/android/core/Ia;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Lcom/crashlytics/android/core/ua;->Hw:Lcom/crashlytics/android/core/ra;

    return-void
.end method

.method final j6(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/crashlytics/android/core/ua;->Hw:Lcom/crashlytics/android/core/ra;

    invoke-interface {v0}, Lcom/crashlytics/android/core/ra;->j6()V

    sget-object v0, Lcom/crashlytics/android/core/ua;->j6:Lcom/crashlytics/android/core/ua$b;

    iput-object v0, p0, Lcom/crashlytics/android/core/ua;->Hw:Lcom/crashlytics/android/core/ra;

    if-nez p1, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/crashlytics/android/core/ua;->DW:Landroid/content/Context;

    const-string v1, "com.crashlytics.CollectCustomLogs"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string v0, "CrashlyticsCore"

    const-string v1, "Preferences requested no custom logs. Aborting log file creation."

    invoke-interface {p1, v0, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_23
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/ua;->DW(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/ua;->j6(Ljava/io/File;I)V

    return-void
.end method

.method j6(Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/crashlytics/android/core/ua;->FH:Lcom/crashlytics/android/core/ua$a;

    invoke-interface {v0}, Lcom/crashlytics/android/core/ua$a;->j6()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_22

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/crashlytics/android/core/ua;->j6(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_22
    return-void
.end method
