.class Labcd/_I;
.super Ljava/io/InputStream;


# static fields
.field private static DW:Ljava/util/regex/Pattern;

.field private static FH:Ljava/util/regex/Pattern;

.field private static final j6:Ljava/lang/String;


# instance fields
.field private EQ:Z

.field private final Hw:Ljava/io/InputStream;

.field private J0:I

.field private final VH:Ljava/io/Writer;

.field private final Zo:Labcd/LE;

.field private gn:Ljava/lang/String;

.field private tp:I

.field private u7:Ljava/lang/String;

.field private final v5:Labcd/DI;

.field private we:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->prefixRemote:Ljava/lang/String;

    sput-object v0, Labcd/_I;->j6:Ljava/lang/String;

    const-string v0, "^([\\w ]+): +(\\d+)(?:, done\\.)? *[\r\n]$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Labcd/_I;->DW:Ljava/util/regex/Pattern;

    const-string v0, "^([\\w ]+): +\\d+% +\\( *(\\d+)/ *(\\d+)\\)(?:, done\\.)? *[\r\n]$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Labcd/_I;->FH:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Labcd/LE;Ljava/io/Writer;)V
    .registers 6

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Labcd/_I;->gn:Ljava/lang/String;

    iput-object p1, p0, Labcd/_I;->Hw:Ljava/io/InputStream;

    new-instance v1, Labcd/DI;

    invoke-direct {v1, p1}, Labcd/DI;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Labcd/_I;->v5:Labcd/DI;

    iput-object p2, p0, Labcd/_I;->Zo:Labcd/LE;

    iput-object p3, p0, Labcd/_I;->VH:Ljava/io/Writer;

    iput-object v0, p0, Labcd/_I;->u7:Ljava/lang/String;

    return-void
.end method

.method private DW(I)Ljava/lang/String;
    .registers 5

    new-array v0, p1, [B

    iget-object v1, p0, Labcd/_I;->Hw:Ljava/io/InputStream;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p1}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    sget-object v1, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-static {v1, v0, v2, p1}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private DW(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/_I;->gn:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_12
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v0, :cond_27

    if-ltz v1, :cond_27

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2d

    :cond_27
    if-ltz v0, :cond_2a

    goto :goto_2d

    :cond_2a
    if-ltz v1, :cond_3c

    move v0, v1

    :goto_2d
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/_I;->j6(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_12

    :cond_3c
    iput-object p1, p0, Labcd/_I;->gn:Ljava/lang/String;

    return-void
.end method

.method private j6()V
    .registers 6

    iget-boolean v0, p0, Labcd/_I;->EQ:Z

    if-nez v0, :cond_79

    iget v0, p0, Labcd/_I;->we:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget v0, p0, Labcd/_I;->J0:I

    if-lez v0, :cond_e

    goto :goto_79

    :cond_e
    :goto_e
    iget-object v0, p0, Labcd/_I;->v5:Labcd/DI;

    invoke-virtual {v0}, Labcd/DI;->j6()I

    move-result v0

    iput v0, p0, Labcd/_I;->J0:I

    if-nez v0, :cond_1b

    iput-boolean v1, p0, Labcd/_I;->EQ:Z

    return-void

    :cond_1b
    iget-object v0, p0, Labcd/_I;->Hw:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Labcd/_I;->we:I

    iget v2, p0, Labcd/_I;->J0:I

    add-int/lit8 v2, v2, -0x5

    iput v2, p0, Labcd/_I;->J0:I

    if-nez v2, :cond_2e

    goto :goto_e

    :cond_2e
    if-eq v0, v1, :cond_79

    const/4 v3, 0x2

    if-eq v0, v3, :cond_71

    const/4 v2, 0x3

    if-eq v0, v2, :cond_51

    new-instance v0, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->invalidChannel:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Labcd/_I;->we:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    iput-boolean v1, p0, Labcd/_I;->EQ:Z

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Labcd/_I;->j6:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Labcd/_I;->J0:I

    invoke-direct {p0, v1}, Labcd/_I;->DW(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/yD;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/yD;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_71
    invoke-direct {p0, v2}, Labcd/_I;->DW(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/_I;->DW(Ljava/lang/String;)V

    goto :goto_e

    :cond_79
    :goto_79
    return-void
.end method

.method private j6(I)V
    .registers 5

    iget-object v0, p0, Labcd/_I;->Zo:Labcd/LE;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Labcd/_I;->j6:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/_I;->u7:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Labcd/LE;->j6(Ljava/lang/String;I)V

    return-void
.end method

.method private j6(Ljava/lang/String;)V
    .registers 7

    sget-object v0, Labcd/_I;->FH:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3f

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Labcd/_I;->u7:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    iput-object p1, p0, Labcd/_I;->u7:Ljava/lang/String;

    iput v4, p0, Labcd/_I;->tp:I

    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Labcd/_I;->j6(I)V

    :cond_2b
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Labcd/_I;->Zo:Labcd/LE;

    iget v1, p0, Labcd/_I;->tp:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Labcd/LE;->update(I)V

    iput p1, p0, Labcd/_I;->tp:I

    return-void

    :cond_3f
    sget-object v0, Labcd/_I;->DW:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Labcd/_I;->u7:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    iput-object p1, p0, Labcd/_I;->u7:Ljava/lang/String;

    iput v4, p0, Labcd/_I;->tp:I

    invoke-direct {p0, v4}, Labcd/_I;->j6(I)V

    :cond_5e
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Labcd/_I;->Zo:Labcd/LE;

    iget v1, p0, Labcd/_I;->tp:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Labcd/LE;->update(I)V

    iput p1, p0, Labcd/_I;->tp:I

    return-void

    :cond_72
    iget-object v0, p0, Labcd/_I;->VH:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public read()I
    .registers 2

    invoke-direct {p0}, Labcd/_I;->j6()V

    iget-boolean v0, p0, Labcd/_I;->EQ:Z

    if-eqz v0, :cond_9

    const/4 v0, -0x1

    return v0

    :cond_9
    iget v0, p0, Labcd/_I;->J0:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/_I;->J0:I

    iget-object v0, p0, Labcd/_I;->Hw:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-gtz p3, :cond_4

    goto :goto_1a

    :cond_4
    invoke-direct {p0}, Labcd/_I;->j6()V

    iget-boolean v1, p0, Labcd/_I;->EQ:Z

    if-eqz v1, :cond_c

    goto :goto_1a

    :cond_c
    iget-object v1, p0, Labcd/_I;->Hw:Ljava/io/InputStream;

    iget v2, p0, Labcd/_I;->J0:I

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_22

    :goto_1a
    iget-boolean p1, p0, Labcd/_I;->EQ:Z

    if-eqz p1, :cond_21

    if-nez v0, :cond_21

    const/4 v0, -0x1

    :cond_21
    return v0

    :cond_22
    add-int/2addr v0, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    iget v2, p0, Labcd/_I;->J0:I

    sub-int/2addr v2, v1

    iput v2, p0, Labcd/_I;->J0:I

    goto :goto_1
.end method
