.class final enum Labcd/GG$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/GG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/GG$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/GG$c;

.field public static final enum FH:Labcd/GG$c;

.field public static final enum Hw:Labcd/GG$c;

.field public static final enum j6:Labcd/GG$c;

.field private static final v5:[Labcd/GG$c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Labcd/GG$c;

    const-string v1, "INSERTED"

    invoke-direct {v0, v1, v5}, Labcd/GG$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/GG$c;->j6:Labcd/GG$c;

    new-instance v1, Labcd/GG$c;

    const-string v2, "EXISTS_PACKED"

    invoke-direct {v1, v2, v6}, Labcd/GG$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/GG$c;->DW:Labcd/GG$c;

    new-instance v2, Labcd/GG$c;

    const-string v3, "EXISTS_LOOSE"

    invoke-direct {v2, v3, v7}, Labcd/GG$c;-><init>(Ljava/lang/String;I)V

    sput-object v2, Labcd/GG$c;->FH:Labcd/GG$c;

    new-instance v3, Labcd/GG$c;

    const-string v4, "FAILURE"

    invoke-direct {v3, v4, v8}, Labcd/GG$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/GG$c;->Hw:Labcd/GG$c;

    const/4 v4, 0x4

    new-array v4, v4, [Labcd/GG$c;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    aput-object v3, v4, v8

    sput-object v4, Labcd/GG$c;->v5:[Labcd/GG$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/GG$c;
    .locals 1

    const-class v0, Labcd/GG$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/GG$c;

    return-object v0
.end method

.method public static values()[Labcd/GG$c;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Labcd/GG$c;->v5:[Labcd/GG$c;

    array-length v1, v0

    new-array v2, v1, [Labcd/GG$c;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
