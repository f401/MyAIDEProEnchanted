.class public Lcom/s1243808733/aide/completion/apiversion/ApiInfo;
.super Ljava/lang/Object;
.source "ApiInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;
    }
.end annotation


# instance fields
.field public deprecated:I

.field public name:Ljava/lang/String;

.field public parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

.field public removed:I

.field public since:I

.field public type:Lcom/s1243808733/aide/completion/apiversion/ApiInfo$Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalid()Z
    .locals 2

    const/4 v0, 0x1

    .line 62
    iget-object v1, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->since:I

    if-ge v1, v0, :cond_0

    iget v1, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->deprecated:I

    if-lt v1, v0, :cond_1

    :cond_0
    iget v1, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->removed:I

    if-ge v1, v0, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRemoved()Z
    .locals 2

    const/4 v0, 0x1

    .line 19
    iget v1, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->removed:I

    if-lez v1, :cond_1

    .line 21
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    if-eqz v1, :cond_2

    iget v1, v1, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->removed:I

    if-gtz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString(Z)Ljava/lang/CharSequence;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 28
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 29
    iget v2, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->since:I

    const-string v0, "Added in API level %d"

    if-le v2, v4, :cond_8

    if-eqz p1, :cond_0

    const-string v0, "\u5728 API %d \u4e2d\u6dfb\u52a0"

    .line 30
    :cond_0
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    :cond_1
    :goto_0
    iget v2, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->deprecated:I

    const-string v0, "Deprecated in API level %d"

    if-le v2, v4, :cond_a

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 37
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    if-eqz p1, :cond_3

    const-string v0, "\u5728 API %d \u4e2d\u5f03\u7528"

    .line 39
    :cond_3
    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->deprecated:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    :cond_4
    :goto_1
    iget v2, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->removed:I

    const-string v0, "Removed in API level %d"

    if-le v2, v4, :cond_d

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 49
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    if-eqz p1, :cond_6

    const-string v0, "\u5728 API %d \u4e2d\u79fb\u9664"

    .line 51
    :cond_6
    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->removed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    :cond_7
    :goto_2
    return-object v1

    .line 31
    :cond_8
    iget-object v2, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    if-eqz v2, :cond_1

    iget v2, v2, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->since:I

    if-le v2, v4, :cond_1

    if-eqz p1, :cond_9

    const-string v0, "\u5728 API %d \u4e2d\u6dfb\u52a0"

    .line 32
    :cond_9
    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    iget v3, v3, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->since:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 40
    :cond_a
    iget-object v2, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    if-eqz v2, :cond_4

    iget v2, v2, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->deprecated:I

    if-le v2, v4, :cond_4

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 42
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    if-eqz p1, :cond_c

    const-string v0, "\u5728 API %d \u4e2d\u5f03\u7528"

    .line 44
    :cond_c
    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    iget v3, v3, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->deprecated:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 52
    :cond_d
    iget-object v2, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    if-eqz v2, :cond_7

    iget v2, v2, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->removed:I

    if-le v2, v4, :cond_7

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_e

    .line 54
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    if-eqz p1, :cond_f

    const-string v0, "\u5728 API %d \u4e2d\u79fb\u9664"

    .line 56
    :cond_f
    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    iget v3, v3, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->removed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
