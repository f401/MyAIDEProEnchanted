.class public final enum Labcd/eJ;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/eJ;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/eJ;

.field public static final enum FH:Labcd/eJ;

.field private static final Hw:[Labcd/eJ;

.field public static final enum j6:Labcd/eJ;


# instance fields
.field private final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Labcd/eJ;

    const-string v1, "AUTO_FOLLOW"

    const-string v2, ""

    invoke-direct {v0, v1, v3, v2}, Labcd/eJ;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labcd/eJ;->j6:Labcd/eJ;

    new-instance v0, Labcd/eJ;

    const-string v1, "NO_TAGS"

    const-string v2, "--no-tags"

    invoke-direct {v0, v1, v4, v2}, Labcd/eJ;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labcd/eJ;->DW:Labcd/eJ;

    new-instance v0, Labcd/eJ;

    const-string v1, "FETCH_TAGS"

    const-string v2, "--tags"

    invoke-direct {v0, v1, v5, v2}, Labcd/eJ;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labcd/eJ;->FH:Labcd/eJ;

    const/4 v0, 0x3

    new-array v0, v0, [Labcd/eJ;

    sget-object v1, Labcd/eJ;->j6:Labcd/eJ;

    aput-object v1, v0, v3

    sget-object v1, Labcd/eJ;->DW:Labcd/eJ;

    aput-object v1, v0, v4

    sget-object v1, Labcd/eJ;->FH:Labcd/eJ;

    aput-object v1, v0, v5

    sput-object v0, Labcd/eJ;->Hw:[Labcd/eJ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Labcd/eJ;->v5:Ljava/lang/String;

    return-void
.end method

.method public static j6(Ljava/lang/String;)Labcd/eJ;
    .registers 7

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Labcd/eJ;->j6:Labcd/eJ;

    :cond_1
    return-object v0

    :cond_2
    invoke-static {}, Labcd/eJ;->values()[Labcd/eJ;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v0, v3, v1

    invoke-virtual {v0}, Labcd/eJ;->Hw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidTagOption:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/eJ;
    .registers 2

    const-class v0, Labcd/eJ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/eJ;

    return-object v0
.end method

.method public static values()[Labcd/eJ;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Labcd/eJ;->Hw:[Labcd/eJ;

    array-length v1, v0

    new-array v2, v1, [Labcd/eJ;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/eJ;->v5:Ljava/lang/String;

    return-object v0
.end method
