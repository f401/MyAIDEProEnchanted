.class public final enum Labcd/jJ$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/jJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Labcd/jJ$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/jJ$a;

.field private static final FH:[Labcd/jJ$a;

.field public static final enum j6:Labcd/jJ$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Labcd/jJ$a;

    const-string v1, "FETCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/jJ$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/jJ$a;->j6:Labcd/jJ$a;

    new-instance v1, Labcd/jJ$a;

    const-string v3, "PUSH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Labcd/jJ$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/jJ$a;->DW:Labcd/jJ$a;

    const/4 v3, 0x2

    new-array v3, v3, [Labcd/jJ$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Labcd/jJ$a;->FH:[Labcd/jJ$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/jJ$a;
    .registers 2

    const-class v0, Labcd/jJ$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Labcd/jJ$a;

    return-object p0
.end method

.method public static values()[Labcd/jJ$a;
    .registers 4

    sget-object v0, Labcd/jJ$a;->FH:[Labcd/jJ$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/jJ$a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
