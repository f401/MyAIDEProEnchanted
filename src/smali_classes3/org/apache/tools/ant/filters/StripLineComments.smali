.class public final Lorg/apache/tools/ant/filters/StripLineComments;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "StripLineComments.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/filters/StripLineComments$Comment;
    }
.end annotation


# static fields
.field private static final COMMENTS_KEY:Ljava/lang/String; = "comment"


# instance fields
.field private comments:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private line:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/StripLineComments;->comments:Ljava/util/Vector;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/StripLineComments;->line:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    .line 79
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/StripLineComments;->comments:Ljava/util/Vector;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/StripLineComments;->line:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private getComments()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripLineComments;->comments:Ljava/util/Vector;

    return-object v0
.end method

.method private initialize()V
    .registers 7

    .line 187
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/StripLineComments;->getParameters()[Lorg/apache/tools/ant/types/Parameter;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_1

    .line 189
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 190
    const-string v4, "comment"

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    iget-object v4, p0, Lorg/apache/tools/ant/filters/StripLineComments;->comments:Ljava/util/Vector;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 189
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_1
    return-void
.end method

.method private setComments(Ljava/util/Vector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lorg/apache/tools/ant/filters/StripLineComments;->comments:Ljava/util/Vector;

    .line 155
    return-void
.end method


# virtual methods
.method public addConfiguredComment(Lorg/apache/tools/ant/filters/StripLineComments$Comment;)V
    .registers 4

    .line 144
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripLineComments;->comments:Ljava/util/Vector;

    invoke-virtual {p1}, Lorg/apache/tools/ant/filters/StripLineComments$Comment;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .registers 4

    .line 177
    new-instance v0, Lorg/apache/tools/ant/filters/StripLineComments;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/StripLineComments;-><init>(Ljava/io/Reader;)V

    .line 178
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/StripLineComments;->getComments()Ljava/util/Vector;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/filters/StripLineComments;->setComments(Ljava/util/Vector;)V

    .line 179
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/StripLineComments;->setInitialized(Z)V

    .line 180
    return-object v0
.end method

.method public read()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 94
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/StripLineComments;->getInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/StripLineComments;->initialize()V

    .line 96
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/filters/StripLineComments;->setInitialized(Z)V

    .line 99
    :cond_0
    const/4 v1, -0x1

    .line 101
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripLineComments;->line:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 103
    iget-object v1, p0, Lorg/apache/tools/ant/filters/StripLineComments;->line:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 104
    iput-object v6, p0, Lorg/apache/tools/ant/filters/StripLineComments;->line:Ljava/lang/String;

    .line 134
    :goto_0
    return v0

    .line 106
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/filters/StripLineComments;->line:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/filters/StripLineComments;->line:Ljava/lang/String;

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/StripLineComments;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/StripLineComments;->line:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripLineComments;->comments:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    .line 112
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripLineComments;->line:Ljava/lang/String;

    if-eqz v0, :cond_5

    move v2, v3

    .line 113
    :goto_2
    if-ge v2, v4, :cond_3

    .line 114
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripLineComments;->comments:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    iget-object v5, p0, Lorg/apache/tools/ant/filters/StripLineComments;->line:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    iput-object v6, p0, Lorg/apache/tools/ant/filters/StripLineComments;->line:Ljava/lang/String;

    .line 121
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripLineComments;->line:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 123
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/StripLineComments;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/StripLineComments;->line:Ljava/lang/String;

    goto :goto_1

    .line 113
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 129
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripLineComments;->line:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 130
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/StripLineComments;->read()I

    move-result v0

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method
