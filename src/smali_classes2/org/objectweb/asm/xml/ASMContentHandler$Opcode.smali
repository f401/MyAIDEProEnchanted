.class final Lorg/objectweb/asm/xml/ASMContentHandler$Opcode;
.super Ljava/lang/Object;


# instance fields
.field public final opcode:I

.field public final type:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/objectweb/asm/xml/ASMContentHandler$Opcode;->opcode:I

    iput p2, p0, Lorg/objectweb/asm/xml/ASMContentHandler$Opcode;->type:I

    return-void
.end method
