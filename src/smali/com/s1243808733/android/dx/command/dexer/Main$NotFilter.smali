.class Lcom/s1243808733/android/dx/command/dexer/Main$NotFilter;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/command/dexer/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotFilter"
.end annotation


# instance fields
.field private final filter:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;)V
    .registers 2

    .line 1151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1152
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$NotFilter;->filter:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;Lcom/s1243808733/android/dx/command/dexer/Main$NotFilter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main$NotFilter;-><init>(Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Z
    .registers 3

    .line 1157
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$NotFilter;->filter:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;

    invoke-interface {v0, p1}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;->accept(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
