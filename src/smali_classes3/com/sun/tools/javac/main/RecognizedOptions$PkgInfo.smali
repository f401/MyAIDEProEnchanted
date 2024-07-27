.class public final enum Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;
.super Ljava/lang/Enum;
.source "RecognizedOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/main/RecognizedOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PkgInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

.field public static final enum ALWAYS:Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

.field public static final enum LEGACY:Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

.field public static final enum NONEMPTY:Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 637
    new-instance v0, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v3}, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;->ALWAYS:Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    new-instance v0, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1, v4}, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;->LEGACY:Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    new-instance v0, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    const-string v1, "NONEMPTY"

    invoke-direct {v0, v1, v5}, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;->NONEMPTY:Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    .line 636
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    sget-object v2, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;->ALWAYS:Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;->LEGACY:Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;->$VALUES:[Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 636
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static get(Lcom/sun/tools/javac/util/Options;)Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;
    .registers 2

    .line 640
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->XPKGINFO:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Options;->get(Lcom/sun/tools/javac/main/OptionName;)Ljava/lang/String;

    move-result-object v0

    .line 641
    if-nez v0, :cond_0

    .line 642
    sget-object v0, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;->LEGACY:Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    .line 641
    :goto_0
    return-object v0

    .line 643
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;->valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;
    .registers 2

    .line 636
    const-class v0, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;
    .registers 1

    .line 636
    sget-object v0, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;->$VALUES:[Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    return-object v0
.end method
