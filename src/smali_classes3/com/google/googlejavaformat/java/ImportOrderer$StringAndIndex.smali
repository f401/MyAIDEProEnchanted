.class Lcom/google/googlejavaformat/java/ImportOrderer$StringAndIndex;
.super Ljava/lang/Object;
.source "ImportOrderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/ImportOrderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringAndIndex"
.end annotation


# instance fields
.field private final index:I

.field private final string:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-object p1, p0, Lcom/google/googlejavaformat/java/ImportOrderer$StringAndIndex;->string:Ljava/lang/String;

    .line 372
    iput p2, p0, Lcom/google/googlejavaformat/java/ImportOrderer$StringAndIndex;->index:I

    .line 373
    return-void
.end method

.method static synthetic access$000(Lcom/google/googlejavaformat/java/ImportOrderer$StringAndIndex;)Ljava/lang/String;
    .registers 2

    .line 366
    iget-object v0, p0, Lcom/google/googlejavaformat/java/ImportOrderer$StringAndIndex;->string:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/googlejavaformat/java/ImportOrderer$StringAndIndex;)I
    .registers 2

    .line 366
    iget v0, p0, Lcom/google/googlejavaformat/java/ImportOrderer$StringAndIndex;->index:I

    return v0
.end method
