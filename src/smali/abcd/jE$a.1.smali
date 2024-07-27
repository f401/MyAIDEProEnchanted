.class public final enum Labcd/jE$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/jE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/jE$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/jE$a;

.field public static final enum FH:Labcd/jE$a;

.field private static final Hw:[Labcd/jE$a;

.field public static final enum j6:Labcd/jE$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Labcd/jE$a;

    const-string v1, "FALSE"

    invoke-direct {v0, v1, v2}, Labcd/jE$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/jE$a;->j6:Labcd/jE$a;

    new-instance v0, Labcd/jE$a;

    const-string v1, "TRUE"

    invoke-direct {v0, v1, v3}, Labcd/jE$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/jE$a;->DW:Labcd/jE$a;

    new-instance v0, Labcd/jE$a;

    const-string v1, "INPUT"

    invoke-direct {v0, v1, v4}, Labcd/jE$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/jE$a;->FH:Labcd/jE$a;

    const/4 v0, 0x3

    new-array v0, v0, [Labcd/jE$a;

    sget-object v1, Labcd/jE$a;->j6:Labcd/jE$a;

    aput-object v1, v0, v2

    sget-object v1, Labcd/jE$a;->DW:Labcd/jE$a;

    aput-object v1, v0, v3

    sget-object v1, Labcd/jE$a;->FH:Labcd/jE$a;

    aput-object v1, v0, v4

    sput-object v0, Labcd/jE$a;->Hw:[Labcd/jE$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/jE$a;
    .registers 2

    const-class v0, Labcd/jE$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/jE$a;

    return-object v0
.end method

.method public static values()[Labcd/jE$a;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Labcd/jE$a;->Hw:[Labcd/jE$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/jE$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
