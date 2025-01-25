.class final enum Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;
.super Ljava/lang/Enum;
.source "Resolve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MethodResolutionPhase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

.field public static final enum BASIC:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

.field public static final enum BOX:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

.field public static final enum VARARITY:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;


# instance fields
.field isBoxingRequired:Z

.field isVarargsRequired:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2352
    new-instance v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    const-string v1, "BASIC"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->BASIC:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 2353
    new-instance v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    const-string v1, "BOX"

    invoke-direct {v0, v1, v4, v4, v3}, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->BOX:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 2354
    new-instance v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    const-string v1, "VARARITY"

    invoke-direct {v0, v1, v5, v4, v4}, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->VARARITY:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 2351
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    sget-object v2, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->BASIC:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->BOX:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->$VALUES:[Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 2359
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2360
    iput-boolean p3, p0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isBoxingRequired:Z

    .line 2361
    iput-boolean p4, p0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired:Z

    .line 2362
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;
    .registers 2

    .line 2351
    const-class v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;
    .registers 1

    .line 2351
    sget-object v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->$VALUES:[Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    return-object v0
.end method


# virtual methods
.method public isApplicable(ZZ)Z
    .registers 4

    .line 2373
    if-nez p2, :cond_6

    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired:Z

    if-nez v0, :cond_e

    :cond_6
    if-nez p1, :cond_c

    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isBoxingRequired:Z

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isBoxingRequired()Z
    .registers 2

    .line 2365
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isBoxingRequired:Z

    return v0
.end method

.method public isVarargsRequired()Z
    .registers 2

    .line 2369
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired:Z

    return v0
.end method
