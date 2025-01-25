.class public final enum Labcd/eJ;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
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
    .registers 8

    new-instance v0, Labcd/eJ;

    const-string v1, ""

    const-string v2, "AUTO_FOLLOW"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Labcd/eJ;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labcd/eJ;->j6:Labcd/eJ;

    new-instance v1, Labcd/eJ;

    const-string v2, "--no-tags"

    const-string v4, "NO_TAGS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Labcd/eJ;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Labcd/eJ;->DW:Labcd/eJ;

    new-instance v2, Labcd/eJ;

    const-string v4, "--tags"

    const-string v6, "FETCH_TAGS"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Labcd/eJ;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Labcd/eJ;->FH:Labcd/eJ;

    const/4 v4, 0x3

    new-array v4, v4, [Labcd/eJ;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Labcd/eJ;->Hw:[Labcd/eJ;

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

    if-eqz p0, :cond_37

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_37

    :cond_9
    invoke-static {}, Labcd/eJ;->values()[Labcd/eJ;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_22

    aget-object v4, v0, v3

    invoke-virtual {v4}, Labcd/eJ;->Hw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    return-object v4

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidTagOption:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    :goto_37
    sget-object p0, Labcd/eJ;->j6:Labcd/eJ;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/eJ;
    .registers 2

    const-class v0, Labcd/eJ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Labcd/eJ;

    return-object p0
.end method

.method public static values()[Labcd/eJ;
    .registers 4

    sget-object v0, Labcd/eJ;->Hw:[Labcd/eJ;

    array-length v1, v0

    new-array v2, v1, [Labcd/eJ;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/eJ;->v5:Ljava/lang/String;

    return-object v0
.end method
