.class public Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;
.super Ljava/lang/Object;
.source "JavaTokenizer.java"

# interfaces
.implements Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BasicComment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;"
    }
.end annotation


# instance fields
.field comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field cs:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

.field protected deprecatedFlag:Z

.field protected scanned:Z


# direct methods
.method protected constructor <init>(Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 964
    iput-boolean v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->deprecatedFlag:Z

    .line 965
    iput-boolean v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->scanned:Z

    .line 970
    iput-object p1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    .line 971
    iput-object p2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->cs:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    .line 972
    return-void
.end method


# virtual methods
.method public getSourcePos(I)I
    .registers 3

    .line 979
    const/4 v0, -0x1

    return v0
.end method

.method public getStyle()Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;
    .registers 2

    .line 983
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->cs:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 975
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDeprecated()Z
    .registers 3

    .line 987
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->scanned:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->cs:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    if-ne v0, v1, :cond_d

    .line 988
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->scanDocComment()V

    .line 990
    :cond_d
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->deprecatedFlag:Z

    return v0
.end method

.method protected scanDocComment()V
    .registers 9

    const/16 v7, 0x9

    const/4 v1, 0x0

    const/16 v6, 0x2f

    const/16 v5, 0x2a

    const/4 v2, 0x1

    .line 996
    :try_start_8
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v3, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    add-int/lit8 v3, v3, 0x3

    iput v3, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    .line 999
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-object v3, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-object v3, v3, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buf:[C

    iget-object v4, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v4, v4, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    aget-char v3, v3, v4

    iput-char v3, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    .line 1002
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v3, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v3, v3, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-ge v0, v3, :cond_133

    .line 1005
    :goto_28
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v3, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v3, v3, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-ge v0, v3, :cond_52

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v3, 0x20

    if-eq v0, v3, :cond_48

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-eq v0, v7, :cond_48

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v3, 0xc

    if-ne v0, v3, :cond_52

    .line 1006
    :cond_48
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanCommentChar()V
    :try_end_4d
    .catchall {:try_start_8 .. :try_end_4d} :catchall_4e

    goto :goto_28

    .line 1074
    :catchall_4e
    move-exception v0

    iput-boolean v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->scanned:Z

    .line 1075
    throw v0

    .line 1010
    :cond_52
    :try_start_52
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v3, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v3, v3, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-ge v0, v3, :cond_70

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v0, v5, :cond_70

    .line 1011
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanCommentChar()V

    .line 1012
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C
    :try_end_6b
    .catchall {:try_start_52 .. :try_end_6b} :catchall_4e

    if-ne v0, v6, :cond_52

    .line 1074
    iput-boolean v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->scanned:Z

    .line 1072
    :goto_6f
    return-void

    .line 1018
    :cond_70
    :goto_70
    :try_start_70
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v3, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v3, v3, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-ge v0, v3, :cond_96

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v3, 0x20

    if-eq v0, v3, :cond_90

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-eq v0, v7, :cond_90

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v3, 0xc

    if-ne v0, v3, :cond_96

    .line 1019
    :cond_90
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanCommentChar()V

    goto :goto_70

    .line 1024
    :cond_96
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->deprecatedFlag:Z

    if-nez v0, :cond_137

    move v0, v1

    .line 1027
    :cond_9b
    iget-object v3, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v3, v3, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v4, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v4, v4, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-ge v3, v4, :cond_137

    iget-object v3, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v3, v3, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const-string v4, "@deprecated"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_137

    .line 1028
    iget-object v3, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanCommentChar()V

    .line 1029
    add-int/lit8 v0, v0, 0x1

    .line 1030
    const-string v3, "@deprecated"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v0, v3, :cond_9b

    move v0, v2

    .line 1037
    :goto_c1
    if-eqz v0, :cond_da

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v3, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v3, v3, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-ge v0, v3, :cond_da

    .line 1038
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 1039
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->deprecatedFlag:Z

    .line 1050
    :cond_da
    :goto_da
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v3, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v3, v3, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-ge v0, v3, :cond_1e

    .line 1051
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v3, 0xa

    if-eq v0, v3, :cond_12c

    const/16 v3, 0xd

    if-eq v0, v3, :cond_11f

    if-eq v0, v5, :cond_110

    .line 1068
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanCommentChar()V

    goto :goto_da

    .line 1040
    :cond_f8
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v0, v5, :cond_da

    .line 1041
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanCommentChar()V

    .line 1042
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v0, v6, :cond_da

    .line 1043
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->deprecatedFlag:Z
    :try_end_10c
    .catchall {:try_start_70 .. :try_end_10c} :catchall_4e

    .line 1074
    iput-boolean v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->scanned:Z

    goto/16 :goto_6f

    .line 1053
    :cond_110
    :try_start_110
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanCommentChar()V

    .line 1054
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C
    :try_end_119
    .catchall {:try_start_110 .. :try_end_119} :catchall_4e

    if-ne v0, v6, :cond_da

    .line 1074
    iput-boolean v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->scanned:Z

    goto/16 :goto_6f

    .line 1059
    :cond_11f
    :try_start_11f
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanCommentChar()V

    .line 1060
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1e

    .line 1065
    :cond_12c
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->comment_reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanCommentChar()V
    :try_end_131
    .catchall {:try_start_11f .. :try_end_131} :catchall_4e

    goto/16 :goto_1e

    .line 1074
    :cond_133
    iput-boolean v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;->scanned:Z

    goto/16 :goto_6f

    :cond_137
    move v0, v1

    goto :goto_c1
.end method
