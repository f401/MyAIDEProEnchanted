.class public abstract Lio/fabric/sdk/android/services/common/a;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Ljava/util/regex/Pattern;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Labcd/Jz;

.field private final Hw:Labcd/Fz;

.field protected final Zo:Lio/fabric/sdk/android/Kit;

.field private final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "http(s?)://[^\\/]+"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/fabric/sdk/android/services/common/a;->j6:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Labcd/Jz;Labcd/Fz;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Lio/fabric/sdk/android/services/common/a;->Zo:Lio/fabric/sdk/android/Kit;

    iput-object p2, p0, Lio/fabric/sdk/android/services/common/a;->v5:Ljava/lang/String;

    invoke-direct {p0, p3}, Lio/fabric/sdk/android/services/common/a;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/a;->DW:Ljava/lang/String;

    iput-object p4, p0, Lio/fabric/sdk/android/services/common/a;->FH:Labcd/Jz;

    iput-object p5, p0, Lio/fabric/sdk/android/services/common/a;->Hw:Labcd/Fz;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "requestFactory must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/a;->v5:Ljava/lang/String;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->DW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/fabric/sdk/android/services/common/a;->j6:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/a;->v5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method protected DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/a;->DW:Ljava/lang/String;

    return-object v0
.end method

.method protected j6()Labcd/Hz;
    .registers 2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/common/a;->j6(Ljava/util/Map;)Labcd/Hz;

    move-result-object v0

    return-object v0
.end method

.method protected j6(Ljava/util/Map;)Labcd/Hz;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Labcd/Hz;"
        }
    .end annotation

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/a;->FH:Labcd/Jz;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/a;->Hw:Labcd/Fz;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/a;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Labcd/Jz;->j6(Labcd/Fz;Ljava/lang/String;Ljava/util/Map;)Labcd/Hz;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/Hz;->j6(Z)Labcd/Hz;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Labcd/Hz;->j6(I)Labcd/Hz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crashlytics Android SDK/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/a;->Zo:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v2}, Lio/fabric/sdk/android/Kit;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "User-Agent"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    const-string v1, "X-CRASHLYTICS-DEVELOPER-TOKEN"

    const-string v2, "470fa2b4ae81cd56ecbcda9735803434cec591fa"

    invoke-virtual {v0, v1, v2}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    return-object v0
.end method
