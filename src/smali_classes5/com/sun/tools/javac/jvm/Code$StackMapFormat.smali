.class public enum Lcom/sun/tools/javac/jvm/Code$StackMapFormat;
.super Ljava/lang/Enum;
.source "Code.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "StackMapFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/jvm/Code$StackMapFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

.field public static final enum CLDC:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

.field public static final enum JSR202:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

.field public static final enum NONE:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->NONE:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    .line 55
    new-instance v0, Lcom/sun/tools/javac/jvm/Code$StackMapFormat$1;

    const-string v1, "CLDC"

    invoke-direct {v0, v1, v4}, Lcom/sun/tools/javac/jvm/Code$StackMapFormat$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->CLDC:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    .line 60
    new-instance v0, Lcom/sun/tools/javac/jvm/Code$StackMapFormat$2;

    const-string v1, "JSR202"

    invoke-direct {v0, v1, v5}, Lcom/sun/tools/javac/jvm/Code$StackMapFormat$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->JSR202:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    .line 53
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    sget-object v2, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->NONE:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->CLDC:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->$VALUES:[Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sun/tools/javac/jvm/Code$1;)V
    .registers 4

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/jvm/Code$StackMapFormat;
    .registers 2

    .line 53
    const-class v0, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/jvm/Code$StackMapFormat;
    .registers 1

    .line 53
    sget-object v0, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->$VALUES:[Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    return-object v0
.end method


# virtual methods
.method getAttributeName(Lcom/sun/tools/javac/util/Names;)Lcom/sun/tools/javac/util/Name;
    .registers 3

    .line 67
    iget-object v0, p1, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    return-object v0
.end method
