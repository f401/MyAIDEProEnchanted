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
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1e

    if-eqz p4, :cond_16

    iput-object p1, p0, Lio/fabric/sdk/android/services/common/a;->Zo:Lio/fabric/sdk/android/Kit;

    iput-object p2, p0, Lio/fabric/sdk/android/services/common/a;->v5:Ljava/lang/String;

    invoke-direct {p0, p3}, Lio/fabric/sdk/android/services/common/a;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/fabric/sdk/android/services/common/a;->DW:Ljava/lang/String;

    iput-object p4, p0, Lio/fabric/sdk/android/services/common/a;->FH:Labcd/Jz;

    iput-object p5, p0, Lio/fabric/sdk/android/services/common/a;->Hw:Labcd/Fz;

    return-void

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "requestFactory must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "url must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/a;->v5:Ljava/lang/String;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->DW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lio/fabric/sdk/android/services/common/a;->j6:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/a;->v5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_14
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
            "Ljava/util/Map<",
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

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Labcd/Hz;->j6(Z)Labcd/Hz;

    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Labcd/Hz;->j6(I)Labcd/Hz;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Crashlytics Android SDK/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/a;->Zo:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v1}, Lio/fabric/sdk/android/Kit;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "User-Agent"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    const-string v0, "X-CRASHLYTICS-DEVELOPER-TOKEN"

    const-string v1, "470fa2b4ae81cd56ecbcda9735803434cec591fa"

    invoke-virtual {p1, v0, v1}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    return-object p1
.end method
