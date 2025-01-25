.class public Lorg/apache/tools/ant/filters/TokenFilter$ContainsString;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "TokenFilter.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/TokenFilter$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/TokenFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContainsString"
.end annotation


# instance fields
.field private contains:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 404
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 424
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsString;->contains:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 427
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 430
    :goto_a
    return-object p1

    :cond_b
    const/4 p1, 0x0

    goto :goto_a

    .line 425
    :cond_d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Missing contains in containsstring"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContains(Ljava/lang/String;)V
    .registers 2

    .line 413
    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsString;->contains:Ljava/lang/String;

    .line 414
    return-void
.end method
