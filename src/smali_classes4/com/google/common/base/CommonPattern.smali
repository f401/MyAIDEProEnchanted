.class abstract Lcom/google/common/base/CommonPattern;
.super Ljava/lang/Object;
.source "CommonPattern.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compile(Ljava/lang/String;)Lcom/google/common/base/CommonPattern;
    .registers 2

    .line 37
    invoke-static {p0}, Lcom/google/common/base/Platform;->compilePattern(Ljava/lang/String;)Lcom/google/common/base/CommonPattern;

    move-result-object v0

    return-object v0
.end method

.method public static isPcreLike()Z
    .registers 1

    .line 41
    invoke-static {}, Lcom/google/common/base/Platform;->patternCompilerIsPcreLike()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract flags()I
.end method

.method public abstract matcher(Ljava/lang/CharSequence;)Lcom/google/common/base/CommonMatcher;
.end method

.method public abstract pattern()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
