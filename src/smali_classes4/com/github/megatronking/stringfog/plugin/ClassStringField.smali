.class Lcom/github/megatronking/stringfog/plugin/ClassStringField;
.super Ljava/lang/Object;


# static fields
.field public static final STRING_DESC:Ljava/lang/String; = "Ljava/lang/String;"


# instance fields
.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/megatronking/stringfog/plugin/ClassStringField;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/github/megatronking/stringfog/plugin/ClassStringField;->value:Ljava/lang/String;

    return-void
.end method
