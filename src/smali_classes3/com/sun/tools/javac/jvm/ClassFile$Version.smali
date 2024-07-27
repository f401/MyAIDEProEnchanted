.class public final enum Lcom/sun/tools/javac/jvm/ClassFile$Version;
.super Ljava/lang/Enum;
.source "ClassFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/jvm/ClassFile$Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/jvm/ClassFile$Version;

.field public static final enum V45_3:Lcom/sun/tools/javac/jvm/ClassFile$Version;

.field public static final enum V49:Lcom/sun/tools/javac/jvm/ClassFile$Version;

.field public static final enum V50:Lcom/sun/tools/javac/jvm/ClassFile$Version;

.field public static final enum V51:Lcom/sun/tools/javac/jvm/ClassFile$Version;


# instance fields
.field public final major:I

.field public final minor:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 96
    new-instance v0, Lcom/sun/tools/javac/jvm/ClassFile$Version;

    const-string v1, "V45_3"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/sun/tools/javac/jvm/ClassFile$Version;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V45_3:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    .line 97
    new-instance v0, Lcom/sun/tools/javac/jvm/ClassFile$Version;

    const-string v1, "V49"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sun/tools/javac/jvm/ClassFile$Version;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V49:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    .line 98
    new-instance v0, Lcom/sun/tools/javac/jvm/ClassFile$Version;

    const-string v1, "V50"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sun/tools/javac/jvm/ClassFile$Version;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V50:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    .line 99
    new-instance v0, Lcom/sun/tools/javac/jvm/ClassFile$Version;

    const-string v1, "V51"

    const/16 v2, 0x33

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sun/tools/javac/jvm/ClassFile$Version;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V51:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    .line 95
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sun/tools/javac/jvm/ClassFile$Version;

    sget-object v2, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V45_3:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V49:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sun/tools/javac/jvm/ClassFile$Version;->V50:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    aput-object v2, v1, v6

    aput-object v0, v1, v4

    sput-object v1, Lcom/sun/tools/javac/jvm/ClassFile$Version;->$VALUES:[Lcom/sun/tools/javac/jvm/ClassFile$Version;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput p3, p0, Lcom/sun/tools/javac/jvm/ClassFile$Version;->major:I

    .line 103
    iput p4, p0, Lcom/sun/tools/javac/jvm/ClassFile$Version;->minor:I

    .line 104
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/jvm/ClassFile$Version;
    .registers 2

    .line 95
    const-class v0, Lcom/sun/tools/javac/jvm/ClassFile$Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/jvm/ClassFile$Version;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/jvm/ClassFile$Version;
    .registers 1

    .line 95
    sget-object v0, Lcom/sun/tools/javac/jvm/ClassFile$Version;->$VALUES:[Lcom/sun/tools/javac/jvm/ClassFile$Version;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/jvm/ClassFile$Version;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/jvm/ClassFile$Version;

    return-object v0
.end method
