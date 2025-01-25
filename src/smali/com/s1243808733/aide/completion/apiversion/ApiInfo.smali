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

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalid()Z
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_17

    iget v0, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->since:I

    if-ge v0, v1, :cond_11

    iget v0, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->deprecated:I

    if-lt v0, v1, :cond_17

    :cond_11
    iget v0, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->removed:I

    if-ge v0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :cond_17
    :goto_17
    return v1
.end method

.method public final isRemoved()Z
    .registers 3

    .line 19
    iget v0, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->removed:I

    const/4 v1, 0x1

    if-lez v0, :cond_6

    return v1

    .line 21
    :cond_6
    iget-object v0, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    if-eqz v0, :cond_f

    iget v0, v0, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->removed:I

    if-lez v0, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public toString(Z)Ljava/lang/CharSequence;
    .registers 9

    .line 28
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 29
    iget v1, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->since:I

    const-string v2, "Added in API level %d"

    const/4 v3, 0x0

    const-string v4, "在 API %d 中添加"

    const/4 v5, 0x1

    if-le v1, v5, :cond_22

    if-eqz p1, :cond_12

    move-object v2, v4

    .line 30
    :cond_12
    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_40

    .line 31
    :cond_22
    iget-object v1, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    if-eqz v1, :cond_40

    iget v1, v1, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->since:I

    if-le v1, v5, :cond_40

    if-eqz p1, :cond_2d

    move-object v2, v4

    .line 32
    :cond_2d
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    iget v4, v4, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->since:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    :cond_40
    :goto_40
    iget v1, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->deprecated:I

    const-string v2, "Deprecated in API level %d"

    const-string v4, ", "

    const-string v6, "在 API %d 中弃用"

    if-le v1, v5, :cond_68

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_53

    .line 37
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_53
    if-eqz p1, :cond_56

    move-object v2, v6

    .line 39
    :cond_56
    new-array v1, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->deprecated:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8f

    .line 40
    :cond_68
    iget-object v1, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    if-eqz v1, :cond_8f

    iget v1, v1, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->deprecated:I

    if-le v1, v5, :cond_8f

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_79

    .line 42
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_79
    if-eqz p1, :cond_7c

    move-object v2, v6

    .line 44
    :cond_7c
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    iget v6, v6, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->deprecated:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    :cond_8f
    :goto_8f
    iget v1, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->removed:I

    const-string v2, "Removed in API level %d"

    const-string v6, "在 API %d 中移除"

    if-le v1, v5, :cond_b5

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_a0

    .line 49
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a0
    if-eqz p1, :cond_a3

    move-object v2, v6

    .line 51
    :cond_a3
    new-array p1, v5, [Ljava/lang/Object;

    iget v1, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->removed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_dc

    .line 52
    :cond_b5
    iget-object v1, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    if-eqz v1, :cond_dc

    iget v1, v1, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->removed:I

    if-le v1, v5, :cond_dc

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_c6

    .line 54
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c6
    if-eqz p1, :cond_c9

    move-object v2, v6

    .line 56
    :cond_c9
    new-array p1, v5, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->parent:Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    iget v1, v1, Lcom/s1243808733/aide/completion/apiversion/ClassApi;->removed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_dc
    :goto_dc
    return-object v0
.end method
