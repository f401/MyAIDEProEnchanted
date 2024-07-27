.class final enum Labcd/tB$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/tB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/tB$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final DW:[Labcd/tB$a;

.field public static final enum j6:Labcd/tB$a;


# instance fields
.field private final FH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    new-instance v0, Labcd/tB$a;

    const-string v1, "PICK"

    const-string v2, "pick"

    invoke-direct {v0, v1, v3, v2}, Labcd/tB$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labcd/tB$a;->j6:Labcd/tB$a;

    const/4 v0, 0x1

    new-array v0, v0, [Labcd/tB$a;

    sget-object v1, Labcd/tB$a;->j6:Labcd/tB$a;

    aput-object v1, v0, v3

    sput-object v0, Labcd/tB$a;->DW:[Labcd/tB$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Labcd/tB$a;->FH:Ljava/lang/String;

    return-void
.end method

.method static j6(Ljava/lang/String;)Labcd/tB$a;
    .registers 5

    const-string v0, "pick"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Labcd/tB$a;->j6:Labcd/tB$a;

    return-object v0

    :cond_1
    new-instance v0, Labcd/SB;

    const-string v1, "Unknown or unsupported command \"{0}\", only  \"pick\" is allowed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/tB$a;
    .registers 2

    const-class v0, Labcd/tB$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/tB$a;

    return-object v0
.end method

.method public static values()[Labcd/tB$a;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Labcd/tB$a;->DW:[Labcd/tB$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/tB$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/tB$a;->FH:Ljava/lang/String;

    return-object v0
.end method
