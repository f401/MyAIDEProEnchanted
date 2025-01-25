.class public final enum Lcom/s1243808733/aide/functions/installer/Installer$TYPE;
.super Ljava/lang/Enum;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/functions/installer/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/s1243808733/aide/functions/installer/Installer$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

.field public static final enum ROOT:Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

.field public static final enum SHIZUKU:Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

.field public static final enum SYSTEM:Lcom/s1243808733/aide/functions/installer/Installer$TYPE;


# direct methods
.method private static synthetic $values()[Lcom/s1243808733/aide/functions/installer/Installer$TYPE;
    .registers 3

    .line 159
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

    const/4 v1, 0x0

    sget-object v2, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;->ROOT:Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;->SHIZUKU:Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;->SYSTEM:Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 160
    new-instance v0, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

    const-string v1, "ROOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;->ROOT:Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

    new-instance v0, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

    const-string v1, "SHIZUKU"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;->SHIZUKU:Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

    new-instance v0, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

    const-string v1, "SYSTEM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;->SYSTEM:Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

    .line 159
    invoke-static {}, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;->$values()[Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;->$VALUES:[Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/aide/functions/installer/Installer$TYPE;
    .registers 2

    .line 159
    const-class v0, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/s1243808733/aide/functions/installer/Installer$TYPE;
    .registers 1

    .line 159
    sget-object v0, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;->$VALUES:[Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

    invoke-virtual {v0}, [Lcom/s1243808733/aide/functions/installer/Installer$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

    return-object v0
.end method
