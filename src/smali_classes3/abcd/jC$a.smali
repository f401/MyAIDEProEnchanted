.class public final enum Labcd/jC$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/jC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Labcd/jC$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/jC$a;

.field public static final enum FH:Labcd/jC$a;

.field public static final enum Hw:Labcd/jC$a;

.field public static final enum j6:Labcd/jC$a;

.field private static final v5:[Labcd/jC$a;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Labcd/jC$a;

    const-string v1, "INSERT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/jC$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/jC$a;->j6:Labcd/jC$a;

    new-instance v1, Labcd/jC$a;

    const-string v3, "DELETE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Labcd/jC$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/jC$a;->DW:Labcd/jC$a;

    new-instance v3, Labcd/jC$a;

    const-string v5, "REPLACE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Labcd/jC$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/jC$a;->FH:Labcd/jC$a;

    new-instance v5, Labcd/jC$a;

    const-string v7, "EMPTY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Labcd/jC$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Labcd/jC$a;->Hw:Labcd/jC$a;

    const/4 v7, 0x4

    new-array v7, v7, [Labcd/jC$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Labcd/jC$a;->v5:[Labcd/jC$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/jC$a;
    .registers 2

    const-class v0, Labcd/jC$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Labcd/jC$a;

    return-object p0
.end method

.method public static values()[Labcd/jC$a;
    .registers 4

    sget-object v0, Labcd/jC$a;->v5:[Labcd/jC$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/jC$a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
