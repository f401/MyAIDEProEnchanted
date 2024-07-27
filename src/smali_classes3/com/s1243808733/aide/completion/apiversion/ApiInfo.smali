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
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalid()Z
    .registers 3

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

    if-lt v1, v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public isRemoved()Z
    .registers 3

    const/4 v0, 0x1

    .line 19
    iget v1, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->removed:I

    if-lez v1, :cond_1

    .line 24
    :cond_0
    :goto_0
    return v0

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    iget v1, v1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->removed:I

    if-gtz v1, :cond_0

    .line 24
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString(Z)Ljava/lang/CharSequence;
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 28
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 29
    iget v0, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->since:I

    if-le v0, v5, :cond_6

    .line 30
    if-eqz p1, :cond_5

    const-string v0, "\u5728 API %d \u4e2d\u6dfb\u52a0"

    :goto_0
    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->since:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    :cond_0
    :goto_1
    iget v0, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->deprecated:I

    if-le v0, v5, :cond_9

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 37
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    :cond_1
    if-eqz p1, :cond_8

    const-string v0, "\u5728 API %d \u4e2d\u5f03\u7528"

    :goto_2
    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->deprecated:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    :cond_2
    :goto_3
    iget v0, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->removed:I

    if-le v0, v5, :cond_d

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 49
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    :cond_3
    if-eqz p1, :cond_c

    const-string v0, "\u5728 API %d \u4e2d\u79fb\u9664"

    :goto_4
    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->removed:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    :cond_4
    :goto_5
    return-object v1

    .line 30
    :cond_5
    const-string v0, "Added in API level %d"

    goto :goto_0

    .line 31
    :cond_6
    iget-object v0, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    iget v0, v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->since:I

    if-le v0, v5, :cond_0

    .line 32
    if-eqz p1, :cond_7

    const-string v0, "\u5728 API %d \u4e2d\u6dfb\u52a0"

    :goto_6
    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    iget v4, v4, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->since:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    const-string v0, "Added in API level %d"

    goto :goto_6

    .line 39
    :cond_8
    const-string v0, "Deprecated in API level %d"

    goto :goto_2

    .line 40
    :cond_9
    iget-object v0, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    iget v0, v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->deprecated:I

    if-le v0, v5, :cond_2

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 42
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    :cond_a
    if-eqz p1, :cond_b

    const-string v0, "\u5728 API %d \u4e2d\u5f03\u7528"

    :goto_7
    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    iget v4, v4, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->deprecated:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_b
    const-string v0, "Deprecated in API level %d"

    goto :goto_7

    .line 51
    :cond_c
    const-string v0, "Removed in API level %d"

    goto :goto_4

    .line 52
    :cond_d
    iget-object v0, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    iget v0, v0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->removed:I

    if-le v0, v5, :cond_4

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 54
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    :cond_e
    if-eqz p1, :cond_f

    const-string v0, "\u5728 API %d \u4e2d\u79fb\u9664"

    :goto_8
    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    iget v4, v4, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->removed:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :cond_f
    const-string v0, "Removed in API level %d"

    goto :goto_8
.end method
