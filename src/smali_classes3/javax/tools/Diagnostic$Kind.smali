.class public final enum Ljavax/tools/Diagnostic$Kind;
.super Ljava/lang/Enum;
.source "Diagnostic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/tools/Diagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/tools/Diagnostic$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Ljavax/tools/Diagnostic$Kind;

.field public static final enum ERROR:Ljavax/tools/Diagnostic$Kind;

.field public static final enum MANDATORY_WARNING:Ljavax/tools/Diagnostic$Kind;

.field public static final enum NOTE:Ljavax/tools/Diagnostic$Kind;

.field public static final enum OTHER:Ljavax/tools/Diagnostic$Kind;

.field public static final enum WARNING:Ljavax/tools/Diagnostic$Kind;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    new-instance v0, Ljavax/tools/Diagnostic$Kind;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Ljavax/tools/Diagnostic$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    .line 62
    new-instance v0, Ljavax/tools/Diagnostic$Kind;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v4}, Ljavax/tools/Diagnostic$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    .line 69
    new-instance v0, Ljavax/tools/Diagnostic$Kind;

    const-string v1, "MANDATORY_WARNING"

    invoke-direct {v0, v1, v5}, Ljavax/tools/Diagnostic$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/tools/Diagnostic$Kind;->MANDATORY_WARNING:Ljavax/tools/Diagnostic$Kind;

    .line 73
    new-instance v0, Ljavax/tools/Diagnostic$Kind;

    const-string v1, "NOTE"

    invoke-direct {v0, v1, v6}, Ljavax/tools/Diagnostic$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    .line 77
    new-instance v0, Ljavax/tools/Diagnostic$Kind;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v7}, Ljavax/tools/Diagnostic$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/tools/Diagnostic$Kind;->OTHER:Ljavax/tools/Diagnostic$Kind;

    .line 53
    const/4 v1, 0x5

    new-array v1, v1, [Ljavax/tools/Diagnostic$Kind;

    sget-object v2, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    aput-object v2, v1, v3

    sget-object v2, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    aput-object v2, v1, v4

    sget-object v2, Ljavax/tools/Diagnostic$Kind;->MANDATORY_WARNING:Ljavax/tools/Diagnostic$Kind;

    aput-object v2, v1, v5

    sget-object v2, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Ljavax/tools/Diagnostic$Kind;->$VALUES:[Ljavax/tools/Diagnostic$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/tools/Diagnostic$Kind;
    .registers 2

    .line 53
    const-class v0, Ljavax/tools/Diagnostic$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/tools/Diagnostic$Kind;

    return-object v0
.end method

.method public static values()[Ljavax/tools/Diagnostic$Kind;
    .registers 1

    .line 53
    sget-object v0, Ljavax/tools/Diagnostic$Kind;->$VALUES:[Ljavax/tools/Diagnostic$Kind;

    invoke-virtual {v0}, [Ljavax/tools/Diagnostic$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/tools/Diagnostic$Kind;

    return-object v0
.end method
