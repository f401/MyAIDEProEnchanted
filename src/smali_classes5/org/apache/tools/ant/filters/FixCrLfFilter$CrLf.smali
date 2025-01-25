.class public Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "FixCrLfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/FixCrLfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrLf"
.end annotation


# static fields
.field private static final ASIS:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

.field private static final CR:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

.field private static final CRLF:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

.field private static final DOS:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

.field private static final LF:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

.field private static final MAC:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

.field private static final UNIX:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 932
    const-string v0, "asis"

    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->ASIS:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    .line 934
    const-string v0, "cr"

    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->CR:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    .line 936
    const-string v0, "crlf"

    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->CRLF:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    .line 938
    const-string v0, "dos"

    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->DOS:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    .line 940
    const-string v0, "lf"

    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->LF:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    .line 942
    const-string v0, "mac"

    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->MAC:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    .line 944
    const-string v0, "unix"

    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->UNIX:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 931
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
    .registers 1

    .line 931
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->MAC:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    return-object v0
.end method

.method static synthetic access$300()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
    .registers 1

    .line 931
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->DOS:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    return-object v0
.end method

.method static synthetic access$400()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
    .registers 1

    .line 931
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->UNIX:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
    .registers 2

    .line 931
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->newInstance()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
    .registers 1

    .line 931
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->CR:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    return-object v0
.end method

.method static synthetic access$800()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
    .registers 1

    .line 931
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->CRLF:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    return-object v0
.end method

.method static synthetic access$900()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
    .registers 1

    .line 931
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->ASIS:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    return-object v0
.end method

.method private newInstance()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
    .registers 2

    .line 989
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
    .registers 2

    .line 998
    new-instance v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    invoke-direct {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;-><init>()V

    .line 999
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->setValue(Ljava/lang/String;)V

    .line 1000
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 960
    instance-of v0, p1, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->getIndex()I

    move-result v0

    check-cast p1, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    invoke-virtual {p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->getIndex()I

    move-result v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getValues()[Ljava/lang/String;
    .registers 4

    .line 951
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "asis"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cr"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lf"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "crlf"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mac"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "unix"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dos"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 968
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->getIndex()I

    move-result v0

    return v0
.end method

.method resolve()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
    .registers 3

    .line 972
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->ASIS:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 982
    :cond_8
    return-object v0

    .line 975
    :cond_9
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->CR:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->MAC:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 978
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->CRLF:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->DOS:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 981
    sget-object v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->LF:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->UNIX:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No replacement for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
